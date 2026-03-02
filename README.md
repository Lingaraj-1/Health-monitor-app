# 📊 System Health Monitor API 
![Docker](https://img.shields.io/badge/docker-%230db7ed.svg?style=for-the-badge&logo=docker&logoColor=white)
![Python](https://img.shields.io/badge/python-3670A0?style=for-the-badge&logo=python&logoColor=ffdd54)
![PostgreSQL](https://img.shields.io/badge/postgres-%23316192.svg?style=for-the-badge&logo=postgresql&logoColor=white)
![Flask](https://img.shields.io/badge/flask-%23000.svg?style=for-the-badge&logo=flask&logoColor=white)

A lightweight *Multi-Tier* application

---
```Markdown
docker pulls (https://hub.docker.com/repository/docker/aliyafirdous22/health-monitor/general)
```
## 🏗️ Project Architecture
This project demonstrates a production-grade containerization strategy:
* *App Tier:* Flask API capturing real-time CPU/RAM metrics using psutil.
* *Database Tier:* PostgreSQL 15-Alpine for persistent data logging.
* *Optimized Build:* Multi-stage Dockerfile to reduce image size and improve security.

---

## 🚀 Getting Started

### 1. Prerequisites
* Python 3.11 (if running locally).

### 2. Build and Launch
Run the following command in the root directory:
```bash
docker-compose up --build
```

## API Endpoints
Route Method Description
/ GET Home: Check if the API is alive.
/status GET Record: Captures CPU/RAM and saves to PostgreSQL.
/history GET History: View the last 10 records from the DB.

The "Persistence Test"
​To verify your DevOps setup is correct:

​Open http://localhost:8080/status (Refresh a few times).

​Check http://localhost:8080/history to see your data.

​Run docker-compose down.

​Run docker-compose up again.

​Refresh /history. If the data is still there, your volumes are working!


## ​📦 Project Structure


health-monitor-app/
├── app.py              # Flask Application logic
├── requirements.txt    # Python dependencies
├── Dockerfile          # Multi-stage build instructions
└── docker-compose.yml  # Orchestration & Volumes



