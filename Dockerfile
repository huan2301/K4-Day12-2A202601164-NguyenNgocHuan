# ═══════════════════════════════════════════════════════════════════
# Stage 1: Build dependencies
# ═══════════════════════════════════════════════════════════════════

FROM python:3.11-slim AS builder

WORKDIR /build

# Copy requirements riêng trước để tận dụng Docker cache
COPY requirements.txt .

# Cài dependencies vào thư mục riêng
RUN pip install --no-cache-dir --prefix=/install -r requirements.txt


# ═══════════════════════════════════════════════════════════════════
# Stage 2: Runtime
# ═══════════════════════════════════════════════════════════════════

FROM python:3.11-slim

WORKDIR /app

# Chỉ lấy dependencies từ builder
COPY --from=builder /install /usr/local

# Copy source code
COPY app/ app/
COPY utils/ utils/

# Tạo user không phải root
RUN useradd --system --no-create-home appuser

USER appuser

EXPOSE 8000

# Health check vào endpoint /healthz
HEALTHCHECK --interval=30s --timeout=5s --start-period=10s --retries=3 \
    CMD python -c "import urllib.request; urllib.request.urlopen('http://127.0.0.1:8000/healthz', timeout=3)" || exit 1

# PORT được truyền từ environment
CMD ["sh", "-c", "exec uvicorn app.main:app --host 0.0.0.0 --port ${PORT:-8000}"]