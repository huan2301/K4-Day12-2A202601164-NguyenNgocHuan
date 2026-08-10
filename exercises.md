# Phiếu Phản Ánh — K4 Ngày 12

> **Bài làm cá nhân.** Trả lời bằng lời của chính bạn, dựa trên những gì bạn
> quan sát được khi chạy code — không sao chép đáp án của người khác.
>
> Cách trả lời: thay dòng `> *Câu trả lời của bạn*` bằng câu trả lời.
> `grade.py` đếm số câu đã trả lời (15 điểm cho 10 câu).
>
> Họ và tên: Nguyễn Ngọc Huân Mã học viên: 2A202601164

---

### Câu 1 — Fail fast (CP1)

Trong `Settings`, `api_token` không có giá trị mặc định nên app chết ngay khi
khởi động nếu thiếu biến môi trường. Hãy mô tả một tình huống cụ thể mà việc
"chết sớm" này cứu bạn, so với việc để mặc định `"changeme"`.

> App chết sớm khi `API_TOKEN` không được set giúp phát hiện cấu hình thiếu ngay ở bước khởi động. Ví dụ cụ thể: khi deploy lên production mà team quên set `API_TOKEN`, nếu app dùng mặc định "changeme" nó sẽ khởi chạy và có thể bắt đầu gọi upstream hoặc ghi log nhầm bằng credential không hợp lệ — dẫn tới side-effect, leak, hoặc phí dịch vụ. Fail-fast khiến pipeline/ops thấy lỗi ngay, ngăn chặn deploy sai và tiết kiệm thời gian điều tra.

---

### Câu 2 — Log cho máy đọc (CP1)

Chạy service và gọi `/chat` vài lần. Dán một dòng log JSON bạn thu được, rồi
nêu **hai** việc bạn làm được với dòng log đó mà `print("đã trả lời xong")`
không làm được.

> Ví dụ một dòng log JSON thu được khi gọi `/chat`:

> {"ts":"2026-08-10T12:34:56.789Z","level":"info","path":"/chat","client_id":"sv-test","status":200,"duration_ms":123,"request_id":"r_abc123","message_len":42}

> Hai việc làm được với log JSON mà `print("đã trả lời xong")` không làm được:

- **Phân tích và thống kê tự động:** dễ index vào ELK/Prometheus để tổng hợp latency, throughput, lỗi theo `client_id`.
- **Correlation/Tracing:** dùng `request_id` để truy vết xuyên dịch vụ khi debug một request cụ thể.

---

### Câu 3 — Kích thước image (CP2)

Build cả hai phiên bản và ghi lại số đo thật:

```bash
docker build -f <Dockerfile-1-stage> -t chat:single .
docker build -t chat:multi .
docker images | grep chat
```

| Bản               | Dung lượng |
| ----------------- | ---------- |
| 1 stage (bản đầu) | 286 MB     |
| Multi-stage       | 270 MB     |

Giải thích: phần dung lượng chênh lệch đó là những gì?

> (Chạy lệnh build theo đề) Thông thường `chat:single` (1-stage) có dung lượng lớn hơn `chat:multi` (multi-stage). Chênh lệch là các artifact build-time: cache của pip, compiler, header files, build tools và layer tạm thời—multi-stage loại bỏ những thứ này khỏi image cuối cùng nên nhẹ hơn.

---

### Câu 4 — Thứ tự lệnh trong Dockerfile (CP2)

Sửa một ký tự trong `app/main.py` rồi build lại. Với Dockerfile của bạn, những
layer nào được dùng lại từ cache, layer nào phải chạy lại? Nếu bạn đặt
`COPY . .` lên trước `RUN pip install` thì kết quả khác thế nào?

> Nếu sửa một ký tự trong `app/main.py` thì layer chứa `COPY . .` bị thay đổi và mọi layer sau nó sẽ phải rebuild; những layer trước (ví dụ làm `pip install` nếu được đặt trước `COPY`) vẫn được cache. Nếu đặt `COPY . .` trước `RUN pip install`, thì mỗi thay đổi code sẽ invalidate cache của bước cài dependencies khiến `pip install` chạy lại, làm build chậm và tăng kích thước intermediate layers.

---

### Câu 5 — Vì sao không chạy bằng root (CP2)

Container mặc định chạy bằng root. Mô tả chuỗi sự kiện dẫn từ "một lỗ hổng
trong code Python của bạn" tới "kẻ tấn công có quyền cao trên máy host", và
lệnh `USER` cắt đứt chuỗi đó ở chỗ nào.

> Chuỗi sự kiện: (1) Lỗ hổng RCE/Upload/Path Traversal tồn tại trong app; (2) attacker gửi payload khai thác tới container; (3) nếu container chạy `root` và có quyền truy cập socket Docker hoặc volume host, attacker có thể leo thang từ container lên host; (4) kết quả là attacker có quyền cao trên máy host. Lệnh `USER` cắt đứt chuỗi này bằng cách chạy tiến trình dưới user ít quyền hơn, giảm khả năng truy cập tài nguyên hệ thống/host ngay cả khi container bị khai thác.

---

### Câu 6 — Bearer token (CP3)

Vì sao 401 phải kèm header `WWW-Authenticate: Bearer`? Và vì sao ta trả **cùng
một** thông báo lỗi cho cả ba trường hợp (thiếu header, sai scheme, sai token)
thay vì nói rõ sai ở đâu cho người dùng dễ sửa?

> `WWW-Authenticate: Bearer` theo RFC cho client biết scheme (Bearer) và cách cấp phép. Trả cùng một thông báo lỗi cho thiếu header/sai scheme/sai token là một biện pháp an ninh: nó tránh tiết lộ thông tin chi tiết giúp kẻ tấn công dò token hoặc biết họ đã đúng phần nào; đồng thời giữ phản hồi chuẩn cho client.

---

### Câu 7 — Token bucket (CP3)

Với `capacity=10`, `refill_per_minute=10`: một client im lặng 10 phút rồi gửi
liên tiếp. Nó gửi được bao nhiêu request trước khi bị 429? Nếu bỏ đoạn
`min(capacity, ...)` trong `available()` thì con số đó thành bao nhiêu, và tại sao?

> Với `capacity=10` và `refill_per_minute=10`, sau 10 phút im lặng bucket sẽ được refill tối đa tới `capacity` = 10 token, nên client gửi được 10 request rồi nhận 429. Nếu bỏ `min(capacity, ...)` trong `available()` thì token sẽ tích lũy không giới hạn theo tỉ lệ refill → sau 10 phút có 10\*10 = 100 token, nên client có thể gửi 100 request trước khi bị 429; điều này là do không còn ràng buộc cứng `capacity`.

---

### Câu 8 — Ngân sách theo ngày (CP3)

So sánh hạn mức $30/tháng với hạn mức $1/ngày cho cùng một client. Giả sử có sự
cố khiến một client gọi liên tục từ 2h sáng. Với mỗi cách, thiệt hại tối đa là
bao nhiêu và service tự hồi phục khi nào?

> `$30/tháng` cho phép một burst lớn tiêu hết 30$ trong thời gian ngắn (thiệt hại tối đa là 30$ ngay lập tức) và service chỉ tự hồi phục khi chu kỳ tháng mới bắt đầu (reset). `$1/ngày` giới hạn thiệt hại tối đa mỗi ngày là 1$, tức attacker chỉ gây được 1$ thiệt hại mỗi ngày và service hồi phục hàng ngày; do đó `$1/ngày` giới hạn tổn thất ngay lập tức tốt hơn nhưng có thể gây phiền toái dài hạn.

---

### Câu 9 — /healthz khác /readyz (CP4)

Nếu gộp hai endpoint làm một và cho nó kiểm tra Redis, chuyện gì xảy ra với cụm
3 container khi Redis mất kết nối 30 giây? Trả lời theo đúng thứ tự sự kiện.

> Nếu gộp `/healthz` và `/readyz` và endpoint kiểm tra Redis, khi Redis mất kết nối 30s trên cụm 3 container, chuỗi sự kiện: 1) probe kiểm tra Redis fail; 2) orchestrator đánh dấu pod không ready (loại khỏi load balancer); 3) nếu liveness probe cũng fail, orchestrator restart pod (có thể tạo restart loop); 4) traffic giảm còn các pod healthy còn lại (nếu đủ); 5) khi Redis trở lại, probes trả success, pod trở lại ready và nhận traffic trở lại.

---

### Câu 10 — Deploy thật (CP5)

Ghi lại **một** lỗi bạn gặp khi deploy lên cloud (build fail, health check
timeout, sai REDIS_URL, app không đọc `$PORT`...): thông báo lỗi là gì, bạn
tìm ra nguyên nhân bằng cách nào, và sửa ra sao?

> Ví dụ lỗi deploy: "Health check timed out". Nguyên nhân thường gặp: app không lắng nghe trên `$PORT` hoặc bind chỉ `127.0.0.1`. Tìm nguyên nhân bằng log deploy/instance và kiểm tra biến môi trường `PORT`. Sửa bằng cách đọc `PORT` từ env và bind `0.0.0.0:$PORT` trong `main.py`, rồi redeploy.
