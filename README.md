# 🚀 Hello AKS App

A cloud-native DevOps project built to learn Docker, Terraform, Microsoft Azure, Kubernetes, and GitHub Actions by deploying a Python Flask application to Azure Kubernetes Service (AKS).

---

## 📖 Project Overview

This project documents my hands-on DevOps learning journey.

Instead of focusing on a complex application, I built a simple Flask web application so I could concentrate on learning modern DevOps tools and cloud infrastructure.

The project demonstrates how to:

- Containerize an application using Docker
- Provision Azure infrastructure using Terraform
- Store container images in Azure Container Registry (ACR)
- Deploy containers to Azure Kubernetes Service (AKS)
- Automate image builds using GitHub Actions
- Update Kubernetes deployments with new container images

Current application output:

```text
Hello from Farooq!
```

---

# 🏗️ Project Architecture

```
                Developer
                    │
                    ▼
              GitHub Repository
                    │
          Git Push (master branch)
                    │
                    ▼
             GitHub Actions CI
                    │
        ┌───────────┴───────────┐
        │                       │
        ▼                       ▼
 Verify Flask App       Build Docker Image
                                │
                                ▼
                Azure Container Registry (ACR)
                                │
                                ▼
               Azure Kubernetes Service (AKS)
                                │
                                ▼
                     Kubernetes Deployment
                                │
                                ▼
                     Kubernetes Service
                         (LoadBalancer)
                                │
                                ▼
                           Web Browser
```

---

# 🛠️ Tech Stack

| Technology | Purpose |
|------------|---------|
| Python | Backend language |
| Flask | Web framework |
| Docker | Containerization |
| Git | Version Control |
| GitHub | Source Code Repository |
| GitHub Actions | Continuous Integration |
| Terraform | Infrastructure as Code |
| Microsoft Azure | Cloud Platform |
| Azure Container Registry | Container Registry |
| Azure Kubernetes Service | Container Orchestration |
| Kubernetes | Container Management |

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

# 🚀 Running Locally

Clone repository

```bash
git clone https://github.com/farooqspecials/hello-aks-app.git
```

```bash
cd hello-aks-app
```

Create virtual environment

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

Run Flask

```bash
python app.py
```

Open browser

```
http://localhost:5000
```

---

# 🐳 Docker

## Build Image

```bash
docker build -t hello-aks-app:v1 .
```

## View Images

```bash
docker images
```

## Run Container

```bash
docker run -d -p 5000:5000 hello-aks-app:v1
```

## Running Containers

```bash
docker ps
```

## Stop Container

```bash
docker stop <container-id>
```

## Remove Container

```bash
docker rm <container-id>
```

## Remove Image

```bash
docker rmi hello-aks-app:v1
```

---

# ☁️ Terraform

Infrastructure is managed using Terraform.

Terraform provisions:

- Azure Resource Group
- Azure Container Registry
- Azure Kubernetes Service

Initialize Terraform

```bash
terraform init
```

Format files

```bash
terraform fmt
```

Validate

```bash
terraform validate
```

Preview changes

```bash
terraform plan
```

Provision Infrastructure

```bash
terraform apply
```

Destroy Infrastructure

```bash
terraform destroy
```

---

# ☁️ Azure

Azure resources created:

- Resource Group
- Azure Container Registry (ACR)
- Azure Kubernetes Service (AKS)

Useful Azure CLI commands

Login

```bash
az login
```

List Resource Groups

```bash
az group list
```

List ACR

```bash
az acr list
```

Show ACR Tags

```bash
az acr repository show-tags --name farooqhelloaksacr --repository hello-aks-app
```

Get AKS Credentials

```bash
az aks get-credentials --resource-group hello-aks-rg --name hello-aks-cluster
```

---

# ☸️ Kubernetes

The application is deployed using Kubernetes Deployment and exposed using a LoadBalancer Service.

Deploy application

```bash
kubectl apply -f k8s/deployment.yaml
```

Deploy Service

```bash
kubectl apply -f k8s/service.yaml
```

View Deployments

```bash
kubectl get deployments
```

View Pods

```bash
kubectl get pods
```

View Services

```bash
kubectl get svc
```

Describe Deployment

```bash
kubectl describe deployment hello-aks-deployment
```

Describe Pod

```bash
kubectl describe pod <pod-name>
```

View Logs

```bash
kubectl logs <pod-name>
```

Access Container

```bash
kubectl exec -it <pod-name> -- sh
```

Restart Deployment

```bash
kubectl rollout restart deployment hello-aks-deployment
```

Watch Rollout

```bash
kubectl rollout status deployment hello-aks-deployment
```

The deployment uses

```yaml
imagePullPolicy: Always
```

to ensure Kubernetes always pulls the latest image from Azure Container Registry.

---

# ⚙️ GitHub Actions

The CI pipeline automatically executes on every push to the **master** branch.

Workflow:

- Checkout repository
- Setup Python
- Install dependencies
- Verify Flask application
- Build Docker image
- Login to Azure Container Registry
- Push Docker image to Azure Container Registry

This allows every code change to automatically generate a new container image.

---

# 🔄 CI/CD Pipeline

```
Developer

↓

Git Commit

↓

Git Push

↓

GitHub Actions

↓

Build Docker Image

↓

Push Image to Azure Container Registry

↓

Restart Kubernetes Deployment

↓

New Pod Created

↓

Updated Application
```

---

# 📚 What I Learned

This project helped me understand:

- Docker containerization
- Docker image lifecycle
- Azure Resource Groups
- Azure Container Registry
- Azure Kubernetes Service
- Infrastructure as Code using Terraform
- GitHub Actions
- Kubernetes Pods
- Deployments
- ReplicaSets
- Services
- Rolling Updates
- Load Balancers
- Container Registries
- Cloud-native application deployment
- CI/CD fundamentals

---

# 📌 Project Status

| Feature | Status |
|---------|--------|
| Flask Application | ✅ |
| Dockerized | ✅ |
| GitHub Repository | ✅ |
| Terraform | ✅ |
| Azure Resource Group | ✅ |
| Azure Container Registry | ✅ |
| Azure Kubernetes Service | ✅ |
| Kubernetes Deployment | ✅ |
| Kubernetes LoadBalancer | ✅ |
| GitHub Actions | ✅ |
| Automatic Docker Build | ✅ |
| Automatic Push to ACR | ✅ |
| Rolling Updates | ✅ |
| Automatic AKS Deployment | 🔄 In Progress |

---

# 🛠️ Challenges Faced

During this project I solved several real-world DevOps issues:

- GitHub Actions authentication
- Azure Student Subscription limitations
- Docker login failures
- Azure Container Registry authentication
- Kubernetes image caching
- `imagePullPolicy`
- Deployment rollouts
- ReplicaSet updates
- Git staging mistakes
- Troubleshooting Pods using `kubectl describe`
- Inspecting containers using `kubectl exec`

These challenges helped me better understand how cloud-native deployments work in practice.

---

# 🚀 Future Improvements

- Automate Kubernetes deployment directly from GitHub Actions
- Use Azure OIDC authentication
- Deploy using Helm Charts
- Version Docker images using Git commit SHA
- Add automated testing
- Add Prometheus monitoring
- Add Grafana dashboards
- Add Azure Monitor
- Build a complete Employee Management System using microservices

---

# 👨‍💻 Author

**Farooq**

This repository documents my hands-on DevOps learning journey. The project demonstrates containerization, Infrastructure as Code, cloud infrastructure provisioning, Kubernetes orchestration, and CI/CD automation using Microsoft Azure and modern DevOps tools.

---

## ⭐ If you found this project helpful, feel free to star the repository!