# Docker Swarm CI/CD Pipeline using Jenkins, Docker Hub & Docker Stack

## 📌 Project Overview

This project demonstrates an end-to-end CI/CD pipeline for building, containerizing, publishing, and deploying a web application using Docker and Jenkins.

The pipeline automates the complete software delivery lifecycle by building Docker images, pushing them to Docker Hub, and deploying them to a Docker Swarm cluster using Docker Stack.

---

## 🚀 Project Objectives

- Build Docker images automatically using Jenkins.
- Version Docker images using tags.
- Push images securely to Docker Hub.
- Deploy applications on a Docker Swarm cluster.
- Manage multiple services using Docker Stack.
- Enable scalable container deployment with replicas.

---

## 🛠️ Tools & Technologies

| Tool | Purpose |
|------|---------|
| Git & GitHub | Source Code Management |
| Jenkins | CI/CD Automation |
| Docker | Containerization |
| Docker Hub | Image Registry |
| Docker Compose | Multi-container Definition |
| Docker Swarm | Container Orchestration |
| Docker Stack | Multi-service Deployment |
| Linux (Amazon Linux) | Operating System |

---

## 🏗️ Infrastructure Setup

| Server | Purpose |
|---------|---------|
| Jenkins Server | CI/CD Pipeline |
| Swarm Manager | Docker Swarm Manager |
| Worker Node | Docker Swarm Worker |

---

## 🔄 CI/CD Workflow

1. Developer pushes source code to GitHub.
2. Jenkins checks out the latest code.
3. Docker builds a custom image.
4. Image is tagged with the selected version.
5. Jenkins authenticates with Docker Hub.
6. Image is pushed to Docker Hub.
7. Docker Stack deploys the application to the Swarm cluster.
8. Docker Swarm distributes containers across cluster nodes.
9. Application becomes available through published ports.

---

## ⚙️ Jenkins Pipeline Stages

- Checkout Source Code
- Build Docker Image
- Tag Docker Image
- Push Image to Docker Hub
- Deploy using Docker Stack

---

## 📂 Repository Structure

```
docker-swarm-cicd-pipeline
│
├── README.md
├── Jenkinsfile
├── Dockerfile
├── docker-compose.yml
├── index.html
├── scripts
│   └── jenkins.sh
│
├── images
│
└── docs
    └── setup-guide.md
```

---

## 📋 Jenkins Parameters

### Docker Image

- movies:v1
- train:v1
- dth:v1
- recharge:v1

### Docker Repository

- dockerhub-user/movies
- dockerhub-user/train
- dockerhub-user/dth
- dockerhub-user/recharge

---

## ✨ Key Features

- Automated Docker Image Build
- Image Versioning
- Docker Hub Integration
- Docker Swarm Cluster Deployment
- Docker Stack Deployment
- Multi-container Application
- Parameterized Jenkins Pipeline
- High Availability using Replicas
- Scalable Architecture
- Automated CI/CD Workflow

---

## 🐳 Docker Components Used

### Dockerfile

Creates a custom Apache web server image with the application.

### Docker Compose

Defines multiple application services.

### Docker Swarm

Provides clustering and orchestration.

### Docker Stack

Deploys multi-service applications across the cluster.

---

## 📁 Project Files

| File | Description |
|------|-------------|
| Jenkinsfile | CI/CD Pipeline |
| Dockerfile | Docker Image Definition |
| docker-compose.yml | Multi-service Deployment |
| index.html | Sample Web Application |
| jenkins.sh | Jenkins Installation Script |

---

## 📸 Screenshots

Screenshots to be added:

- Jenkins Dashboard
- Successful Pipeline
- Docker Build Logs
- Docker Images
- Docker Hub Repository
- Docker Swarm Nodes
- Docker Services
- Docker Stack Deployment
- Running Application

---

## 📚 Skills Demonstrated

- Docker
- Docker Compose
- Docker Swarm
- Docker Stack
- Jenkins
- Git & GitHub
- Linux Administration
- Docker Hub
- CI/CD
- Shell Scripting

---

## 🔮 Future Enhancements

- Deploy on Kubernetes
- Add SonarQube Code Analysis
- Integrate Trivy Security Scanning
- Push Images to Amazon ECR
- Deploy on AWS ECS
- Provision Infrastructure using Terraform

---

## 👨‍💻 Author

**Vidhya Nandini**

Aspiring DevOps & Cloud Engineer

If you found this repository helpful, feel free to ⭐ the project.
