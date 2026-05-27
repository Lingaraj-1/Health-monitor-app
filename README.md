# 📊 Dockerized System Health Monitor API

A lightweight multi-container monitoring application built using Flask, PostgreSQL, and Docker Compose.

This project was implemented as part of my DevOps learning journey to understand:
- Docker containerization
- Multi-container architecture
- Persistent storage using Docker volumes
- Flask API development
- PostgreSQL integration
- Docker Compose orchestration

---

# 🚀 Tech Stack

- Python 3.11
- Flask
- PostgreSQL 15
- Docker
- Docker Compose
- psutil

---

# 🏗️ Project Architecture

The application follows a simple two-tier architecture:

## Application Tier
- Flask-based REST API
- Captures real-time CPU and memory usage
- Uses `psutil` for system metrics collection

## Database Tier
- PostgreSQL container for persistent data storage
- Docker volumes used to retain data even after container restart

## Containerization
- Multi-stage Dockerfile used for optimized image size
- Lightweight Alpine Linux base image
- Docker Compose used for orchestration and networking

---

# 📂 Project Structure

```bash
health-monitor-app/
├── app.py                # Flask application
├── requirements.txt      # Python dependencies
├── Dockerfile            # Multi-stage Docker build
├── docker-compose.yml    # Multi-container orchestration
└── README.md
```

---

# ⚙️ Getting Started

## 1. Clone Repository

```bash
git clone <https://github.com/Lingaraj-1/Health-monitor-app.git>
cd health-monitor-app
```

---

## 2. Build and Start Containers

```bash
docker compose up --build
```

---

# 🌐 API Endpoints

| Endpoint | Method | Description |
|----------|---------|-------------|
| `/` | GET | Health check endpoint |
| `/status` | GET | Captures current CPU/RAM usage and stores in PostgreSQL |
| `/history` | GET | Displays previously stored monitoring records |

---

# 🧪 Persistence Test

To verify Docker volume persistence:

1. Open:

```bash
http://localhost:8080/status
```

Refresh multiple times.

2. Check stored history:

```bash
http://localhost:8080/history
```

3. Stop containers:

```bash
docker compose down
```

4. Restart again:

```bash
docker compose up
```

5. Reopen `/history`

If previous records still exist, Docker volumes are working correctly.

---

# 🐳 Docker Concepts Used

- Multi-stage Docker builds
- Docker networking
- Docker volumes
- Environment variables
- Container orchestration with Docker Compose
- Persistent database storage

---

# 📌 Learning Outcomes

Through this project, I learned:
- Building Docker images
- Managing multi-container applications
- Connecting Flask with PostgreSQL
- Working with Docker volumes and networks
- Container lifecycle management
- Basic DevOps project structuring

---

# ▶️ Future Improvements

- Add GitHub Actions CI/CD pipeline
- Deploy application on AWS EC2
- Add Nginx reverse proxy
- Add Prometheus and Grafana monitoring
- Add health checks and logging

---

# 📜 License

This project is created for learning and DevOps practice purposes.
