# Hello AKS App 🚀

A simple Flask application built to learn a complete DevOps deployment pipeline using Docker, Terraform, Azure Container Registry (ACR), Azure Kubernetes Service (AKS), and GitHub Actions.

---

## 📖 Project Overview

This project is part of my DevOps learning journey. The application is intentionally simple so the focus remains on learning cloud infrastructure, containerization, Kubernetes, Infrastructure as Code (Terraform), and CI/CD.

Current application output:

```
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
- Microsoft Azure
- Azure Container Registry (ACR)
- Azure Kubernetes Service (AKS)
- GitHub Actions (Coming Soon)

---

## 📂 Project Structure

```
hello-aks-app/
│
├── app.py
├── Dockerfile
├── requirements.txt
├── terraform/
│   ├── provider.tf
│   ├── variables.tf
│   ├── main.tf
│   ├── acr.tf
│   ├── aks.tf
│   └── outputs.tf
├── .gitignore
└── README.md
```

---

## 🚀 Running Locally

### Clone the repository

```bash
git clone https://github.com/farooqspecials/hello-aks-app.git
cd hello-aks-app
```

### Create a virtual environment

```bash
python -m venv venv
```

Windows:

```bash
venv\Scripts\activate
```

### Install dependencies

```bash
pip install -r requirements.txt
```

### Run the application

```bash
python app.py
```

Visit:

```
http://localhost:5000
```

---

## 🐳 Docker

Build the image

```bash
docker build -t hello-aks-app:v1 .
```

Run the container

```bash
docker run -d -p 5000:5000 hello-aks-app:v1
```

---

## ☁️ Azure Infrastructure

The infrastructure is provisioned using Terraform.

Current Azure resources:

- Azure Resource Group
- Azure Container Registry (ACR)
- Azure Kubernetes Service (AKS)

Provision infrastructure:

```bash
cd terraform

terraform init
terraform plan
terraform apply
```

---

## 📚 Learning Objectives

This project demonstrates:

- Docker containerization
- Infrastructure as Code with Terraform
- Azure Resource Group provisioning
- Azure Container Registry
- Azure Kubernetes Service (AKS)
- Kubernetes fundamentals
- Git & GitHub
- CI/CD with GitHub Actions (next phase)

---

## 📌 Current Progress

- ✅ Flask Application
- ✅ Dockerized Application
- ✅ GitHub Repository
- ✅ Terraform Configuration
- ✅ Azure Resource Group
- ✅ Azure Container Registry
- ✅ Docker Image pushed to ACR
- ✅ Azure Kubernetes Service (AKS)
- ⏳ Kubernetes Deployment
- ⏳ Kubernetes Service
- ⏳ GitHub Actions CI/CD

---

## 🎯 Upcoming Work

- Deploy Flask application to AKS
- Expose the application using Kubernetes Service
- Configure GitHub Actions
- Automate build and deployment pipeline

---

## 👨‍💻 Author

**Farooq**

This repository documents my DevOps learning journey as I build a complete cloud-native deployment pipeline using modern DevOps tools and Azure services.
