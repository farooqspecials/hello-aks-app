# Hello AKS App 🚀

A simple Flask application built to learn a complete DevOps deployment pipeline using Docker, Terraform, Azure Container Registry (ACR), Azure Kubernetes Service (AKS), Kubernetes, and GitHub Actions.

---

## 📖 Project Overview

This project is part of my DevOps learning journey. The application is intentionally simple so the focus remains on understanding modern DevOps practices, including containerization, Infrastructure as Code (Terraform), Kubernetes, cloud deployment on Microsoft Azure, and CI/CD with GitHub Actions.

The application currently displays:

```text
Hello from Azure Kubernetes!
```

The application is successfully deployed and running on **Azure Kubernetes Service (AKS)**.

---

## 🛠️ Tech Stack

- Python
- Flask
- Docker
- Git
- GitHub
- Terraform
- Microsoft Azure
- Azure Resource Group
- Azure Container Registry (ACR)
- Azure Kubernetes Service (AKS)
- Kubernetes
- GitHub Actions (CI)

---

## 📂 Project Structure

```text
hello-aks-app/
│
├── app.py
├── Dockerfile
├── requirements.txt
├── deployment.yaml
├── service.yaml
├── terraform/
│   ├── provider.tf
│   ├── variables.tf
│   ├── main.tf
│   ├── acr.tf
│   ├── aks.tf
│   └── outputs.tf
├── .github/
│   └── workflows/
├── .gitignore
└── README.md
```

---

## 🚀 Running the Application Locally

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

```text
http://localhost:5000
```

---

## 🐳 Docker

Build the image:

```bash
docker build -t hello-aks-app:v1 .
```

Run the container:

```bash
docker run -d -p 5000:5000 hello-aks-app:v1
```

---

## ☁️ Azure Infrastructure

Infrastructure is provisioned using **Terraform**.

Currently provisioned resources:

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

## ☸️ Kubernetes Deployment

The application is deployed to Azure Kubernetes Service using Kubernetes manifests.

Deployment:

```bash
kubectl apply -f deployment.yaml
```

Service:

```bash
kubectl apply -f service.yaml
```

The application is accessible through an Azure LoadBalancer public IP.

---

## ⚙️ GitHub Actions

This project is currently implementing a **Continuous Integration (CI)** pipeline using GitHub Actions.

Planned CI workflow:

- Checkout repository
- Set up Python
- Install dependencies
- Verify application
- Build Docker image
- (Optional) Push image to Docker Hub

### Note

The original plan was to automate deployment to Azure Container Registry (ACR) and Azure Kubernetes Service (AKS) using GitHub Actions.

However, this project uses an **Azure for Students** subscription managed by a university Microsoft Entra ID tenant. Due to tenant-level security restrictions, creating the required Service Principal for GitHub authentication is not permitted.

As a result:

- ✅ Continuous Integration (CI) with GitHub Actions is being implemented.
- ⏳ Continuous Deployment (CD) to Azure will be completed later using a personal Azure subscription or an environment with the required Microsoft Entra ID permissions.

---

## 📚 Learning Objectives

This project demonstrates:

- Python & Flask
- Docker containerization
- Git & GitHub
- Infrastructure as Code with Terraform
- Azure Resource Group provisioning
- Azure Container Registry (ACR)
- Azure Kubernetes Service (AKS)
- Kubernetes Deployments & Services
- GitHub Actions (Continuous Integration)

---

## 📌 Current Progress

- ✅ Flask Application
- ✅ Dockerized Application
- ✅ GitHub Repository
- ✅ Terraform Configuration
- ✅ Azure Resource Group
- ✅ Azure Container Registry (ACR)
- ✅ Docker Image pushed to ACR
- ✅ Azure Kubernetes Service (AKS)
- ✅ Kubernetes Deployment
- ✅ Kubernetes Service (LoadBalancer)
- ✅ Application running on Azure
- 🚧 GitHub Actions (Continuous Integration)
- ⏳ Automated Azure Deployment (Pending Azure authentication permissions)

---

## 🎯 Next Steps

- Build a complete GitHub Actions CI pipeline
- Automatically build Docker images
- Learn GitHub Actions jobs, steps, runners, and secrets
- Optionally publish Docker images to Docker Hub
- Complete Azure deployment automation when Microsoft Entra ID permissions are available
- Last updated: Testing GitHub Actions Docker Hub workflow.

---

## 👨‍💻 Author

**Farooq**

This repository documents my DevOps learning journey as I build a cloud-native application and an end-to-end DevOps pipeline using modern tools including Docker, Terraform, Kubernetes, Azure, and GitHub Actions.
