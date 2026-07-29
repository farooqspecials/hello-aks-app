# Hello AKS App 🚀

A simple Flask application built to learn a complete cloud-native DevOps pipeline using Docker, Terraform, Azure Container Registry (ACR), Azure Kubernetes Service (AKS), Kubernetes, and GitHub Actions.

---

# 📖 Project Overview

This project is part of my DevOps learning journey. The application is intentionally simple so I can focus on learning modern DevOps tools, Infrastructure as Code (Terraform), containerization, Kubernetes, Microsoft Azure, and CI/CD automation.

Current application output:

```text
Hello from Azure Kubernetes!
```

The application has been successfully:

- Dockerized
- Pushed to Docker Hub
- Pushed to Azure Container Registry (ACR)
- Deployed to Azure Kubernetes Service (AKS)
- Exposed through a Kubernetes LoadBalancer
- Automated with a basic GitHub Actions CI pipeline

---

# 🛠️ Tech Stack

- Python
- Flask
- Docker
- Git & GitHub
- GitHub Actions
- Terraform
- Microsoft Azure
- Azure Container Registry (ACR)
- Azure Kubernetes Service (AKS)
- Kubernetes

---

# 📂 Project Structure

```text
hello-aks-app/
│
├── .github/
│   └── workflows/
│       └── ci.yml
│
├── terraform/
│   ├── provider.tf
│   ├── variables.tf
│   ├── main.tf
│   ├── acr.tf
│   ├── aks.tf
│   └── outputs.tf
│
├── k8s/
│   ├── deployment.yaml
│   └── service.yaml
│
├── app.py
├── Dockerfile
├── requirements.txt
├── .gitignore
└── README.md
```

---

# 🚀 Run Locally

Clone the repository

```bash
git clone https://github.com/farooqspecials/hello-aks-app.git
cd hello-aks-app
```

Create a virtual environment

```bash
python -m venv venv
```

Windows

```bash
venv\Scripts\activate
```

Install dependencies

```bash
pip install -r requirements.txt
```

Run the application

```bash
python app.py
```

Open:

```
http://localhost:5000
```

---

# 🐳 Docker

Build the image

```bash
docker build -t hello-aks-app:v1 .
```

Run the container

```bash
docker run -d -p 5000:5000 hello-aks-app:v1
```

Push to Docker Hub

```bash
docker tag hello-aks-app:v1 farooqspecials/hello-aks-app:latest

docker push farooqspecials/hello-aks-app:latest
```

---

# ☁️ Azure Infrastructure

Infrastructure is managed using Terraform.

Provision Azure resources

```bash
cd terraform

terraform init
terraform plan
terraform apply
```

Resources created:

- ✅ Resource Group
- ✅ Azure Container Registry (ACR)
- ✅ Azure Kubernetes Service (AKS)

---

# ☸️ Kubernetes

Deploy the application

```bash
kubectl apply -f k8s/deployment.yaml
kubectl apply -f k8s/service.yaml
```

Check deployment

```bash
kubectl get deployments
kubectl get pods
kubectl get services
```

The application is exposed using a **LoadBalancer** service.

---

# ⚙️ GitHub Actions

A CI workflow has been configured using GitHub Actions.

The workflow automatically:

- Checks out the repository
- Sets up Python
- Installs project dependencies
- Builds the Docker image
- Pushes the Docker image to Docker Hub

---

# ⚠️ Current Limitation

The next planned step is to automate deployment to Azure using GitHub Actions.

At the moment, this is blocked because the Azure for Students subscription is managed by the university tenant, which does not allow creating an Azure Service Principal required for GitHub Actions authentication.

The current CI pipeline successfully automates Docker image builds and pushes to Docker Hub, while Azure deployment is performed manually.

---

# 📚 Learning Objectives

This project demonstrates:

- Python Flask development
- Docker containerization
- Git & GitHub workflows
- GitHub Actions CI
- Infrastructure as Code with Terraform
- Azure Resource Group provisioning
- Azure Container Registry (ACR)
- Azure Kubernetes Service (AKS)
- Kubernetes Deployments
- Kubernetes Services

---

# 📌 Current Progress

- ✅ Flask Application
- ✅ Dockerized Application
- ✅ GitHub Repository
- ✅ Terraform Infrastructure
- ✅ Azure Resource Group
- ✅ Azure Container Registry
- ✅ Docker Image pushed to ACR
- ✅ Docker Image pushed to Docker Hub
- ✅ Azure Kubernetes Service
- ✅ Kubernetes Deployment
- ✅ Kubernetes Service (LoadBalancer)
- ✅ GitHub Actions CI Pipeline
- ⏳ GitHub Actions CD (Azure deployment pending authentication)

---

# 🚀 Future Improvements

- Configure GitHub Actions CD for AKS deployment
- Use Azure Workload Identity or OIDC authentication
- Deploy using Helm charts
- Add automated testing
- Add monitoring with Azure Monitor / Prometheus
- Add logging with Grafana

---

# 👨‍💻 Author

**Farooq**

This repository documents my hands-on DevOps learning journey. The project evolves step by step as I learn containerization, Infrastructure as Code, Kubernetes, cloud services, and CI/CD using modern DevOps practices.