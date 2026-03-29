# 🚀 AI News Assistant – Production-Style CI/CD Pipeline

> Production-grade DevOps implementation using **Docker**, **GitHub Actions**, and **DockerHub**

---

## 📌 Overview 

This project demonstrates how a real-world Python application can be transformed into a **production-ready system using DevOps practices**.

The base application, **AI News Assistant**, is a Streamlit-based web app that fetches real-time news and generates AI-powered summaries.

👉 The focus of this repository is not just the application, but how it is **built, packaged, and delivered using a modern DevOps workflow**.

---

## 🎯 Project Objective

The goal of this project is to simulate how real-world systems:

* Automate build and deployment processes
* Reduce manual intervention and human errors
* Ensure consistent and repeatable deployments
* Deliver applications reliably using CI/CD pipelines

This mirrors how **cloud-native applications are handled in production environments**.

---

## 🏗️ Architecture

```id="arch001"
Developer
   ↓
GitHub Repository
   ↓
GitHub Actions (CI/CD Pipeline)
   ↓
Docker Image Build
   ↓
DockerHub (Image Registry)
   ↓
Deployment Ready (Cloud / Server)
```

---

## 🔄 CI/CD Workflow

Every push to the `main` branch automatically triggers the pipeline.

### Pipeline Steps:

1. **Code Push** → Developer pushes code to GitHub
2. **CI Trigger** → GitHub Actions starts automatically
3. **Build Phase** → Docker image is created
4. **Authentication** → Secure login to DockerHub using secrets
5. **Push Phase** → Image is pushed to DockerHub
6. **Deployment Ready** → Image can be deployed anywhere

💡 This automation ensures:

* Faster delivery cycles
* Consistent builds
* Reduced deployment errors

---

## 📁 Project Structure

```id="struct001"
ai-news-assistant-devops/
│
├── .github/workflows/
│   └── ci-cd.yml          # CI/CD pipeline definition
│
├── app/                   # Application source code
│   └── app.py
│
├── Dockerfile             # Container configuration
├── .dockerignore          # Excludes unnecessary files
├── requirements.txt       # Dependencies
└── README.md
```

---

## 🛠️ Tech Stack

* **Python 3.x** – Backend logic
* **Streamlit** – Web application framework
* **Docker** – Containerization
* **GitHub Actions** – CI/CD automation
* **DockerHub** – Container image registry

---

## 🚀 Getting Started

### 1️⃣ Clone Repository

```bash id="clone001"
git clone https://github.com/YuvarajOfl/ai-news-assistant-devops.git
cd ai-news-assistant-devops
```

---

### 2️⃣ Build Docker Image

```bash id="build001"
docker build -t ai-news-assistant .
```

---

### 3️⃣ Run Container

```bash id="run001"
docker run -p 8501:8501 ai-news-assistant
```

Open in browser:

```id="url001"
http://localhost:8501
```

---

## 🔐 CI/CD Setup (GitHub Secrets)

To enable DockerHub integration:

Go to:

```id="sec001"
Repository → Settings → Secrets → Actions
```

Add the following:

* `DOCKERHUB_USERNAME`
* `DOCKERHUB_PASSWORD`

These credentials are securely used during the pipeline execution.

---

## 🔄 CI/CD Flow (Simplified)

```id="flow001"
git push → GitHub Actions → Docker build → DockerHub push
```

---

## 🌍 Deployment Readiness

The generated Docker image is **platform-independent** and can be deployed on:

* Cloud platforms (AWS, Azure, GCP)
* Container services (Kubernetes, ECS)
* Hosting platforms (Render, Railway)

This makes the application **fully portable and production-ready**.

---

## 📊 What This Project Demonstrates

* End-to-End CI/CD pipeline implementation
* Containerized application deployment
* Automation using GitHub Actions
* DevOps best practices and workflow design
* Production-oriented thinking

---

## 🔗 Related Project

**AI News Assistant (Application Repository)**
https://github.com/YuvarajOfl/ai-news-assistant

---

## 📄 License

MIT License

---

## 🧠 Final Note

This project reflects a real-world DevOps mindset — where building the application is only one part, and **automating its delivery pipeline is equally critical**.

---

*Built to demonstrate practical DevOps skills and production-ready deployment workflows.*
