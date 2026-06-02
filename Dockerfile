# Stage 1 - Build stage
FROM python:3.11-slim AS builder

WORKDIR /app

COPY requirements.txt .

RUN pip install --user --no-cache-dir -r requirements.txt

# Stage 2 - Runtime stage
FROM python:3.11-slim

WORKDIR /app

COPY --from=builder /root/.local /root/.local

COPY app/ .

ENV PATH=/root/.local/bin:$PATH

EXPOSE 5000

CMD ["gunicorn", "--bind", "0.0.0.0:5000", "--workers", "2", "app:app"]