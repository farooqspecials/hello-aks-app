# Hello AKS App 🚀

A simple Flask application used to learn and demonstrate a complete DevOps deployment pipeline using Docker, Terraform, GitHub Actions, and Azure Kubernetes Service (AKS).

## 📖 Project Overview

This project is part of my DevOps learning journey. The application itself is intentionally simple so I can focus on understanding the deployment process and cloud infrastructure.

The application currently displays:

```
Hello from Azure Kubernetes!
```

## 🛠️ Tech Stack

- Python
- Flask
- Docker
- Git
- GitHub
- GitHub Actions (Coming Soon)
- Terraform (Coming Soon)
- Azure Container Registry (ACR) (Coming Soon)
- Azure Kubernetes Service (AKS) (Coming Soon)

## 📂 Project Structure

```
hello-aks-app/
│
├── app.py
├── Dockerfile
├── requirements.txt
├── .gitignore
└── README.md
```

## 🚀 Running the Application Locally

### 1. Clone the repository

```bash
git clone https://github.com/farooqspecials/hello-aks-app.git
cd hello-aks-app
```

### 2. Create a virtual environment

**Windows**

```bash
python -m venv venv
venv\Scripts\activate
```

### 3. Install dependencies

```bash
pip install -r requirements.txt
```

### 4. Run the application

```bash
python app.py
```

Open your browser and visit:

```
http://localhost:5000
```

---

## 🐳 Running with Docker

### Build the Docker image

```bash
docker build -t hello-aks-app:v1 .
```

### Run the Docker container

```bash
docker run -d -p 5000:5000 --name hello-aks-container hello-aks-app:v1
```

Open:

```
http://localhost:5000
```

---

## 📚 Learning Objectives

This project is being built step by step to learn:

- Docker
- Git & GitHub
- Azure
- Terraform
- Kubernetes (AKS)
- GitHub Actions
- CI/CD Pipelines

---

## 📌 Project Status

- ✅ Flask application
- ✅ Dockerized application
- ✅ GitHub repository
- ⏳ Azure Infrastructure (Terraform)
- ⏳ Azure Container Registry (ACR)
- ⏳ Azure Kubernetes Service (AKS)
- ⏳ GitHub Actions CI/CD Pipeline

---

## 👨‍💻 Author

**Farooq**

This repository is part of my DevOps learning journey and will continue to evolve as I learn new technologies.
