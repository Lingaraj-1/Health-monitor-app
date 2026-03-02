FROM python:3.11-alpine AS builder 
WORKDIR /app
RUN apk add --no-cache gcc musl-dev postgresql-dev python3-dev linux-headers libffi-dev
COPY requirements.txt .
RUN pip install --prefix=/install -r requirements.txt

FROM python:3.11-alpine

RUN apk add --no-cache libpq
WORKDIR /app

COPY --from=builder /install /usr/local
COPY app.py .
EXPOSE 8080
CMD ["python", "app.py"]