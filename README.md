[![CI](https://github.com/huan2301/K4-Day12-2A202601164-NguyenNgocHuan/actions/workflows/ci-cd.yml/badge.svg)](https://github.com/huan2301/K4-Day12-2A202601164-NguyenNgocHuan/actions/workflows/ci-cd.yml)

# K4 â€” NgÃ y 12: Háº¡ Táº§ng Cloud & Deployment (14h00â€“18h00)

ÄÆ°a má»™t chat service tá»« `localhost:8000` lÃªn má»™t Ä‘á»‹a chá»‰ cÃ´ng khai mÃ  ngÆ°á»i khÃ¡c
gá»i Ä‘Æ°á»£c, cÃ³ báº£o máº­t, cÃ³ giá»›i háº¡n chi phÃ­, vÃ  khÃ´ng sáº­p khi báº¡n deploy báº£n má»›i.

---

## âš ï¸ BÃ i LÃ m CÃ¡ NhÃ¢n

**ÄÃ¢y lÃ  bÃ i táº­p cÃ¡ nhÃ¢n. Má»—i há»c viÃªn ná»™p má»™t repository cá»§a riÃªng mÃ¬nh.**

| ÄÆ°á»£c phÃ©p | KhÃ´ng Ä‘Æ°á»£c phÃ©p |
|-----------|-----------------|
| Äá»c tÃ i liá»‡u, Stack Overflow, tra AI Ä‘á»ƒ hiá»ƒu khÃ¡i niá»‡m | Sao chÃ©p code cá»§a há»c viÃªn khÃ¡c |
| Há»i Lab Coach khi bá»‹ káº¹t | DÃ¹ng chung repo, chung commit history |
| Tháº£o luáº­n **cÃ¡ch tiáº¿p cáº­n** vá»›i báº¡n cÃ¹ng lá»›p | Nhá» ngÆ°á»i khÃ¡c lÃ m há»™, ká»ƒ cáº£ má»™t pháº§n |
| DÃ¹ng AI Ä‘á»ƒ giáº£i thÃ­ch lá»—i | Ná»™p code mÃ  báº¡n khÃ´ng giáº£i thÃ­ch Ä‘Æ°á»£c |

**CÃ¡ch kiá»ƒm tra:** Lab Coach sáº½ chá»n ngáº«u nhiÃªn há»c viÃªn Ä‘á»ƒ há»i
trá»±c tiáº¿p vá» code trong bÃ i ná»™p. KhÃ´ng giáº£i thÃ­ch Ä‘Æ°á»£c pháº§n mÃ¬nh viáº¿t â†’ Ä‘iá»ƒm
pháº§n Ä‘Ã³ bá»‹ há»§y.

**PhÃ¡t hiá»‡n hai bÃ i trÃ¹ng nhau báº¥t thÆ°á»ng (cÃ¹ng lá»—i chÃ­nh táº£, cÃ¹ng comment,
cÃ¹ng cáº¥u trÃºc láº¡): cáº£ hai bÃ i Ä‘á»u 0 Ä‘iá»ƒm**, khÃ´ng phÃ¢n biá»‡t ai chÃ©p cá»§a ai.

> LÆ°u Ã½: bÃ i cá»§a cÃ¡c khÃ³a trÆ°á»›c Ä‘ang cÃ´ng khai trÃªn GitHub, nhÆ°ng **ná»™i dung cá»§a báº£n K4 khÃ¡c so vá»›i cÃ¡c bÃ i Ä‘Ã³** â€” khÃ¡c endpoint, khÃ¡c kiá»ƒu xÃ¡c thá»±c, khÃ¡c thuáº­t toÃ¡n
> rate limit, khÃ¡c tÃªn trÆ°á»ng trong response. ChÃ©p vá» sáº½ rá»›t gáº§n nhÆ° toÃ n bá»™
> test, vÃ  Lab Coach nhÃ¬n ra ngay.

---

## ðŸ“¦ CÃ¡ch Äáº·t TÃªn Repository

Repo ná»™p bÃ i **báº¯t buá»™c** Ä‘áº·t tÃªn theo máº«u:

```
K4-DAY12-<MÃ£ há»c viÃªn>-<Há» vÃ  TÃªn>
```

**Quy táº¯c viáº¿t:**
- Há» tÃªn **viáº¿t liá»n, khÃ´ng dáº¥u**, chá»¯ cÃ¡i Ä‘áº§u má»—i tá»« viáº¿t hoa
- Giá»¯ nguyÃªn tiá»n tá»‘ `K4-DAY12-`, ngÄƒn cÃ¡ch cÃ¡c pháº§n báº±ng dáº¥u gáº¡ch ngang `-`
- KhÃ´ng khoáº£ng tráº¯ng (GitHub tá»± Ä‘á»•i khoáº£ng tráº¯ng thÃ nh `-`, dá»… sai lá»‡ch)

**VÃ­ dá»¥:**

| Há»c viÃªn | TÃªn repo |
|----------|----------|
| 2A202600280 â€” Nguyá»…n VÄƒn An | `K4-DAY12-2A202600280-NguyenVanAn` |
| 2A202601111 â€” Tráº§n Thá»‹ BÃ­ch HÃ  | `K4-DAY12-2A202601111-TranThiBichHa` |

**Sai tÃªn repo = trá»« 5 Ä‘iá»ƒm.** ÄÃ¢y lÃ  cÃ¡ch duy nháº¥t Ä‘á»ƒ Lab Coach biáº¿t bÃ i cá»§a ai
trong khoáº£ng 1000 repo.

### Táº¡o repo vÃ  báº¯t Ä‘áº§u lÃ m

```bash
# 1. Fork repo lab vá» vÃ  Ä‘á»•i tÃªn theo cÃº phÃ¡p bÃªn trÃªn
# 2. Clone repo lab vá» mÃ¡y
git clone <URL repo báº¡n Ä‘Ã£ fork>
cd K4-DAY12-2A202600280-NguyenVanAn
# 3. Commit vÃ  Push khi hoÃ n thiá»‡n bÃ i lab
git add .
git commit -m "Checkpoint 0"
git push origin main
```

> Commit sau má»—i checkpoint. Lá»‹ch sá»­ commit cho tháº¥y báº¡n tá»± lÃ m â€” má»™t commit
> duy nháº¥t vÃ o phÃºt chÃ³t lÃ  dáº¥u hiá»‡u Ä‘Ã¡ng ngá».

---

## Má»¥c TiÃªu

Sau buá»•i lab nÃ y, báº¡n sáº½:
- TÃ¡ch toÃ n bá»™ cáº¥u hÃ¬nh ra khá»i code theo 12-Factor vÃ  biáº¿t vÃ¬ sao secret khÃ´ng Ä‘Æ°á»£c cÃ³ giÃ¡ trá»‹ máº·c Ä‘á»‹nh
- Viáº¿t Dockerfile multi-stage, cháº¡y container báº±ng user thÆ°á»ng, image dÆ°á»›i 400MB
- Báº£o vá»‡ API báº±ng Bearer token (RFC 6750), token bucket rate limit vÃ  cost guard theo ngÃ y
- PhÃ¢n biá»‡t liveness/readiness probe, xá»­ lÃ½ SIGTERM Ä‘á»ƒ deploy khÃ´ng rá»›t request
- Thiáº¿t káº¿ service stateless Ä‘á»ƒ scale ngang Ä‘Æ°á»£c
- Deploy lÃªn cloud vÃ  cÃ³ má»™t Ä‘á»‹a chá»‰ cÃ´ng khai hoáº¡t Ä‘á»™ng tháº­t

---

## Lá»‹ch TrÃ¬nh & Checkpoint

| Giá» | Ná»™i dung | Checkpoint | Äiá»ƒm |
|-----|----------|------------|------|
| 14h00â€“14h20 | Setup mÃ´i trÆ°á»ng, táº¡o repo Ä‘Ãºng tÃªn | **CP0:** `pytest tests/ -v` cháº¡y Ä‘Æ°á»£c (rá»›t háº¿t lÃ  Ä‘Ãºng â€” báº¡n chÆ°a code) | â€” |
| 14h20â€“15h00 | **Block 1** â€” 12-Factor Config, Health, Logging | **CP1 (15h00):** `pytest tests/test_cp1.py -v` | 15 |
| 15h00â€“15h45 | **Block 2** â€” Docker: multi-stage, báº£o máº­t image | **CP2 (15h45):** `pytest tests/test_cp2.py -v` | 15 |
| 15h45â€“15h55 | â˜• Giáº£i lao | â€” | â€” |
| 15h55â€“16h40 | **Block 3** â€” API Security: Bearer, token bucket, cost guard | **CP3 (16h40):** `pytest tests/test_cp3.py -v` | 20 |
| 16h40â€“17h20 | **Block 4** â€” Scaling & Reliability | **CP4 (17h20):** `pytest tests/test_cp4.py -v` | 20 |
| 17h20â€“17h50 | **Block 5** â€” Deploy lÃªn cloud | **CP5 (17h50):** `pytest tests/test_cp5.py -v` | 15 |
| 17h50â€“18h00 | HoÃ n thiá»‡n `exercises.md`, `python grade.py`, ná»™p bÃ i | | 15 |
| â€” | **BONUS** â€” CI/CD vá»›i GitHub Actions (khÃ´ng báº¯t buá»™c) | `pytest tests/test_bonus_cicd.py -v` | +10 |

**CÃ¡ch dÃ¹ng checkpoint:** Ä‘áº¿n má»‘c giá» nÃ o thÃ¬ cháº¡y lá»‡nh cá»§a checkpoint Ä‘Ã³. Xanh
háº¿t â†’ sang block sau. CÃ²n Ä‘á» â†’ Ä‘á»c thÃ´ng bÃ¡o lá»—i (má»—i test Ä‘á»u ghi rÃµ sai á»Ÿ Ä‘Ã¢u
vÃ  vÃ¬ sao Ä‘iá»u Ä‘Ã³ quan trá»ng), sá»­a, cháº¡y láº¡i. Káº¹t quÃ¡ 10 phÃºt thÃ¬ gá»i Lab Coach
vÃ  **Ä‘i tiáº¿p block sau** â€” lÃ m Ä‘Æ°á»£c Ä‘áº¿n Ä‘Ã¢u cÃ³ Ä‘iá»ƒm Ä‘áº¿n Ä‘Ã³, Ä‘á»«ng Ä‘á»ƒ táº¯c má»™t chá»—
mÃ  máº¥t cáº£ cÃ¡c block cÃ²n láº¡i.

**Pháº§n BONUS** dÃ nh cho báº¡n nÃ o xong sá»›m hoáº·c muá»‘n lÃ m thÃªm sau buá»•i lab: tá»±
viáº¿t má»™t workflow GitHub Actions Ä‘á»ƒ má»—i láº§n push lÃ  tá»± cháº¡y test, tá»± build
image, vÃ  chá»‰ deploy khi má»i thá»© xanh. Lab **khÃ´ng cho sáºµn file máº«u** â€” Ä‘Ã¢y lÃ 
pháº§n Ä‘á»ƒ báº¡n tá»± Ä‘á»c tÃ i liá»‡u vÃ  tá»± dá»±ng. Chá»‰ nÃªn báº¯t Ä‘áº§u khi CP1â€“CP5 Ä‘Ã£ á»•n.

Chi tiáº¿t tá»«ng bÆ°á»›c: [LAB_GUIDE.md](LAB_GUIDE.md).

---

## Há»£p Äá»“ng API Báº¡n Sáº½ XÃ¢y

| | |
|---|---|
| `GET /healthz` | Liveness â€” 200 khi process sá»‘ng, 503 khi Ä‘ang táº¯t dáº§n |
| `GET /readyz` | Readiness â€” 200 khi ná»‘i Ä‘Æ°á»£c Redis, 503 khi khÃ´ng |
| `POST /chat` | Endpoint chÃ­nh, cáº§n `Authorization: Bearer <token>` |

```bash
curl -X POST https://<domain>/chat \
  -H "Authorization: Bearer $API_TOKEN" \
  -H "X-Client-Id: sv01" \
  -H "Content-Type: application/json" \
  -d '{"message": "Docker lÃ  gÃ¬?"}'
```

```json
{
  "reply": "...",
  "client_id": "sv01",
  "turns_before": 2,
  "usd_cost": 0.0000226,
  "usage": {"prompt": 3, "completion": 37}
}
```

| MÃ£ lá»—i | Khi nÃ o |
|---|---|
| 401 | thiáº¿u/sai Bearer token |
| 402 | háº¿t ngÃ¢n sÃ¡ch trong ngÃ y |
| 422 | body sai Ä‘á»‹nh dáº¡ng |
| 429 | háº¿t token trong xÃ´ (rate limit) |
| 503 | chÆ°a ready, hoáº·c Ä‘ang táº¯t dáº§n |

---

## CÃ i Äáº·t

### YÃªu cáº§u
- Python 3.11+
- Docker & Docker Compose (cáº§n cho CP2 trá»Ÿ Ä‘i)
- Git + tÃ i khoáº£n GitHub
- TÃ i khoáº£n Railway hoáº·c Render (miá»…n phÃ­, Ä‘Äƒng kÃ½ ~5 phÃºt â€” cáº§n cho CP5)

KhÃ´ng cáº§n API key cá»§a OpenAI hoáº·c cÃ¡c bÃªn cung cáº¥p API khÃ¡c: lab dÃ¹ng **mock LLM** cháº¡y offline.

### MÃ´i trÆ°á»ng áº£o & thÆ° viá»‡n

**macOS / Linux:**
```bash
python3 -m venv .venv
source .venv/bin/activate
pip install -r requirements.txt
```

**Windows (PowerShell):**
```powershell
python -m venv .venv
.venv\Scripts\Activate.ps1
pip install -r requirements.txt
```

### File cáº¥u hÃ¬nh

```bash
cp .env.example .env          # Windows: copy .env.example .env
```

Má»Ÿ `.env`, Ä‘á»•i `API_TOKEN` thÃ nh token cá»§a riÃªng báº¡n:

```bash
python -c "import secrets; print(secrets.token_urlsafe(32))"
```

`.env` Ä‘Ã£ náº±m trong `.gitignore` â€” **khÃ´ng bao giá» commit file nÃ y**.

### Redis

```bash
docker compose up -d redis            # cÃ¡ch chuáº©n
```

ChÆ°a cÃ i Ä‘Æ°á»£c Docker? Äáº·t táº¡m `REDIS_URL=fake://` trong `.env` Ä‘á»ƒ dÃ¹ng Redis giáº£
trong RAM (Ä‘á»§ Ä‘á»ƒ lÃ m CP1/CP3/CP4, nhÆ°ng CP2 vÃ  CP5 váº«n cáº§n Docker).

---

## Cáº¥u TrÃºc ThÆ° Má»¥c

```
K4-DAY12-<MÃ£HV>-<Há»TÃªn>/
â”œâ”€â”€ README.md              # File nÃ y â€” quy Ä‘á»‹nh, lá»‹ch trÃ¬nh, cháº¥m Ä‘iá»ƒm, ná»™p bÃ i
â”œâ”€â”€ LAB_GUIDE.md           # HÆ°á»›ng dáº«n chi tiáº¿t tá»«ng block
â”œâ”€â”€ exercises.md           # 10 cÃ¢u pháº£n Ã¡nh
â”œâ”€â”€ DEPLOYMENT.md          # Äiá»n URL sau khi deploy (CP5 Ä‘á»c file nÃ y)
â”œâ”€â”€ grade.py               # Cháº¥m Ä‘iá»ƒm tá»± Ä‘á»™ng
â”œâ”€â”€ app/                   # â˜… NÆ I Báº N VIáº¾T CODE
â”‚   â”œâ”€â”€ config.py          #   CP1 â€” Settings 12-factor
â”‚   â”œâ”€â”€ logging_utils.py   #   CP1 â€” log JSON
â”‚   â”œâ”€â”€ main.py            #   CP1/CP3/CP4 â€” FastAPI app
â”‚   â”œâ”€â”€ auth.py            #   CP3 â€” Bearer token
â”‚   â”œâ”€â”€ rate_limiter.py    #   CP3 â€” token bucket
â”‚   â”œâ”€â”€ cost_guard.py      #   CP3 â€” ngÃ¢n sÃ¡ch theo ngÃ y
â”‚   â”œâ”€â”€ store.py           #   CP4 â€” lá»‹ch sá»­ há»™i thoáº¡i trong Redis
â”‚   â””â”€â”€ lifecycle.py       #   CP4 â€” graceful shutdown
â”œâ”€â”€ utils/mock_llm.py      # Cho sáºµn â€” LLM giáº£, khÃ´ng cáº§n API key
â”œâ”€â”€ Dockerfile             # â˜… CP2 â€” sá»­a thÃ nh multi-stage
â”œâ”€â”€ docker-compose.yml     # â˜… CP2 â€” thÃªm service chat
â”œâ”€â”€ .dockerignore          # â˜… CP2 â€” bá»• sung má»¥c cÃ²n thiáº¿u
â”œâ”€â”€ nginx/nginx.conf       # Cho sáºµn â€” load balancer (Ä‘iá»ƒm cá»™ng)
â”œâ”€â”€ railway.toml           # CP5 â€” cáº¥u hÃ¬nh Railway
â”œâ”€â”€ render.yaml            # CP5 â€” cáº¥u hÃ¬nh Render
â”œâ”€â”€ screenshots/           # áº¢nh chá»¥p mÃ n hÃ¬nh báº£n deploy
â”œâ”€â”€ .github/workflows/     # â˜… BONUS â€” workflow CI/CD báº¡n tá»± viáº¿t (chÆ°a cÃ³ sáºµn)
â””â”€â”€ tests/
    â”œâ”€â”€ test_cp1.py â€¦ test_cp5.py
    â”œâ”€â”€ test_bonus_cicd.py # BONUS â€” cháº¥m workflow CI/CD
    â””â”€â”€ conftest.py
```

Dáº¥u â˜… = file báº¡n pháº£i sá»­a (hoáº·c tá»± táº¡o). CÃ¡c file khÃ¡c Ä‘á»c Ä‘á»ƒ hiá»ƒu, khÃ´ng cáº§n sá»­a.

---

## Cháº¡y Kiá»ƒm Thá»­

```bash
pytest tests/test_cp1.py -v     # tá»«ng checkpoint
pytest tests/ -v                # toÃ n bá»™
pytest tests/ -v -m "not docker"  # bá» qua test build Docker (cháº­m)
```

Test dÃ¹ng Redis giáº£ (`fakeredis`) nÃªn **khÃ´ng cáº§n Redis tháº­t**. CÃ¡c test build
image tá»± bá» qua náº¿u mÃ¡y báº¡n chÆ°a báº­t Docker.

---

## Cháº¥m Äiá»ƒm Tá»± Äá»™ng (100 Ä‘iá»ƒm)

```bash
python grade.py
```

| TiÃªu chÃ­ | CÃ¡ch cháº¥m | Äiá»ƒm |
|----------|-----------|------|
| CP1 â€” 12-Factor Config, Health & Logging | `tests/test_cp1.py` | 15 |
| CP2 â€” Docker: multi-stage, báº£o máº­t image | `tests/test_cp2.py` | 15 |
| CP3 â€” API Security: Bearer, token bucket, cost guard | `tests/test_cp3.py` | 20 |
| CP4 â€” Scaling & Reliability | `tests/test_cp4.py` | 20 |
| CP5 â€” Cloud Deployment | `tests/test_cp5.py` | 15 |
| `exercises.md` â€” 10 cÃ¢u pháº£n Ã¡nh | Äáº¿m sá»‘ cÃ¢u Ä‘Ã£ tráº£ lá»i | 15 |
| **Tá»•ng pháº§n báº¯t buá»™c** | | **100** |
| BONUS â€” CI/CD vá»›i GitHub Actions | `tests/test_bonus_cicd.py` | +10 |

Äiá»ƒm bonus cá»™ng vÃ o tá»•ng nhÆ°ng **tá»•ng cuá»‘i khÃ´ng vÆ°á»£t quÃ¡ 100**. Muá»‘n cháº¥m nhanh
pháº§n báº¯t buá»™c thÃ´i: `python grade.py --no-bonus`.

Äiá»ƒm má»—i checkpoint tá»· lá»‡ vá»›i sá»‘ test pass â€” **lÃ m Ä‘Æ°á»£c Ä‘áº¿n Ä‘Ã¢u cÃ³ Ä‘iá»ƒm Ä‘áº¿n Ä‘Ã³**.

**Trá»« Ä‘iá»ƒm:**
- Sai quy táº¯c Ä‘áº·t tÃªn repo: **âˆ’5**
- Commit file `.env` hoáº·c Ä‘á»ƒ lá»™ token trong repo: **âˆ’10**
- KhÃ´ng giáº£i thÃ­ch Ä‘Æ°á»£c code khi Ä‘Æ°á»£c há»i: há»§y Ä‘iá»ƒm pháº§n Ä‘Ã³

**KhÃ´ng deploy Ä‘Æ°á»£c lÃªn cloud?** Äáº·t `LOCAL_FALLBACK=true` trong `.env`, cháº¡y
`docker compose up -d`, chá»¥p mÃ n hÃ¬nh vÃ o `screenshots/`. CP5 khi Ä‘Ã³ tá»‘i Ä‘a
9/15 Ä‘iá»ƒm. Váº«n hÆ¡n lÃ  bá» tráº¯ng.

---

## HÆ°á»›ng Dáº«n Ná»™p BÃ i

```bash
# 1. Kiá»ƒm tra láº§n cuá»‘i
python grade.py

# 2. Cháº¯c cháº¯n .env KHÃ”NG bá»‹ commit
git ls-files | grep "^\.env$" && echo "Dá»ªNG Láº I: .env Ä‘ang bá»‹ theo dÃµi"

# 3. Commit vÃ  Ä‘áº©y lÃªn
git add -A
git commit -m "HoÃ n thÃ nh lab Day 12"
git push
```

Ná»™p **link repository** lÃªn codelab. Repo pháº£i á»Ÿ cháº¿ Ä‘á»™ public.

**Háº¡n ná»™p:** 23h59 cÃ¹ng ngÃ y.

---

## Danh SÃ¡ch Kiá»ƒm Tra TrÆ°á»›c Khi Ná»™p

- [ ] Repo Ä‘Ãºng tÃªn `K4-DAY12-<MÃ£HV>-<Há»TÃªn>`, viáº¿t liá»n khÃ´ng dáº¥u
- [ ] `pytest tests/ -v` â€” Ä‘Ã£ cháº¡y vÃ  biáº¿t rÃµ test nÃ o cÃ²n rá»›t, vÃ¬ sao
- [ ] `python grade.py` â€” xem Ä‘iá»ƒm, má»¥c tiÃªu â‰¥ 75/100
- [ ] `exercises.md` â€” Ä‘á»§ 10 cÃ¢u, viáº¿t báº±ng lá»i cá»§a mÃ¬nh
- [ ] `DEPLOYMENT.md` â€” cÃ³ Public URL tháº­t, khÃ´ng dÃ¡n giÃ¡ trá»‹ token
- [ ] `screenshots/` â€” cÃ³ áº£nh dashboard vÃ  áº£nh gá»i `/healthz`
- [ ] `.env` **khÃ´ng** náº±m trong repo (`git ls-files | grep .env` chá»‰ ra `.env.example`)
- [ ] KhÃ´ng cÃ²n `NotImplementedError` nÃ o trong `app/`
- [ ] CÃ³ commit á»Ÿ nhiá»u má»‘c thá»i gian, khÃ´ng pháº£i má»™t commit duy nháº¥t
- [ ] *(Bonus)* `.github/workflows/ci.yml` cháº¡y xanh, README cÃ³ badge `passing`

