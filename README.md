# Hello AKS App 🚀

A simple Flask application built to learn and demonstrate a complete DevOps deployment pipeline using Docker, Terraform, GitHub Actions, and Azure Kubernetes Service (AKS).

---

## 📖 Project Overview

This project is part of my DevOps learning journey. The application itself is intentionally simple so I can focus on understanding cloud infrastructure, containerization, Infrastructure as Code (IaC), Kubernetes, and CI/CD.

The application currently displays:

```text
Hello from Azure Kubernetes!
```

---

## 🛠️ Tech Stack

- Python
- Flask
- Docker
- Git
- GitHub
- Terraform
- Azure CLI
- Azure Resource Manager (ARM)
- Azure Container Registry (ACR) *(Coming Soon)*
- Azure Kubernetes Service (AKS) *(Coming Soon)*
- GitHub Actions *(Coming Soon)*

---

## 📂 Project Structure

```text
hello-aks-app/
│
├── app.py
├── Dockerfile
├── requirements.txt
├── README.md
├── .gitignore
│
└── terraform/
    ├── provider.tf
    ├── variables.tf
    ├── main.tf
    ├── outputs.tf
    └── .terraform.lock.hcl
```

---

## 🚀 Running the Application Locally

### 1. Clone the repository

```bash
git clone https://github.com/farooqspecials/hello-aks-app.git
cd hello-aks-app
```

### 2. Create a virtual environment

```bash
python -m venv venv
```

Activate the environment:

**Windows**

```bash
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

Open:

```text
http://localhost:5000
```

---

## 🐳 Running with Docker

### Build the Docker image

```bash
docker build -t hello-aks-app:v1 .
```

### Run the container

```bash
docker run -d -p 5000:5000 --name hello-aks-container hello-aks-app:v1
```

Open:

```text
http://localhost:5000
```

---

## ☁️ Infrastructure as Code (Terraform)

The Azure infrastructure for this project is managed using Terraform.

### Current Infrastructure

- ✅ Azure Resource Group

### Terraform Workflow

```bash
terraform init
terraform plan
terraform apply
```

---

## 📚 Learning Objectives

This project is being built step by step to learn:

- Docker
- Git & GitHub
- Terraform
- Azure
- Infrastructure as Code (IaC)
- Azure Kubernetes Service (AKS)
- GitHub Actions
- CI/CD Pipelines

---

## 📌 Project Status

- ✅ Flask application
- ✅ Dockerized application
- ✅ Git & GitHub
- ✅ Terraform setup
- ✅ Azure Resource Group created with Terraform
- ✅ Azure Container Registry (ACR)
- ⏳ Push Docker image to ACR
- ⏳ Azure Kubernetes Service (AKS)
- ⏳ GitHub Actions CI/CD Pipeline
- ⏳ Deploy application to AKS

---

## 🗺️ Project Roadmap

```
Flask Application
        │
        ▼
Dockerize Application
        │
        ▼
Push Code to GitHub
        │
        ▼
Create Azure Resource Group (Terraform) ✅
        │
        ▼
Create Azure Container Registry (ACR)
        │
        ▼
Create Azure Kubernetes Service (AKS)
        │
        ▼
Deploy Docker Image
        │
        ▼
Automate Deployment with GitHub Actions
```

---

## 👨‍💻 Author

**Farooq**

This repository documents my DevOps learning journey. The project will continue to evolve as I learn Docker, Terraform, Azure, Kubernetes, and CI/CD by building and deploying a real application step by step.
