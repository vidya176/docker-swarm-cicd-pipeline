# Docker Swarm CI/CD Pipeline Setup Guide

## Overview

This project demonstrates an end-to-end CI/CD pipeline that automates building, publishing, and deploying a Dockerized web application using Jenkins, Docker Hub, Docker Swarm, and Docker Stack.

---

# Architecture

```
Developer
    │
    ▼
GitHub Repository
    │
    ▼
Jenkins Pipeline
    │
    ├── Checkout Source Code
    ├── Build Docker Image
    ├── Tag Docker Image
    ├── Push Image to Docker Hub
    └── Deploy using Docker Stack
              │
              ▼
      Docker Swarm Cluster
        ├── Manager Node
        └── Worker Nodes
```

---

# Prerequisites

- AWS Account 
- 3 Linux Servers 
- Docker Installed
- Jenkins Installed
- Docker Hub Account
- Git Installed

---

# Infrastructure

| Server | Purpose |
|---------|---------|
| Jenkins + Swarm Manager | Builds images and manages the Swarm cluster |
| Worker Node 1 | Runs application containers |
| Worker Node 2 | Runs application containers |

---

# Step 1 – Install Docker

Run the following commands on all three servers.

```bash
sudo yum install docker -y
sudo systemctl enable docker
sudo systemctl start docker
sudo systemctl status docker
```

Verify:

```bash
docker --version
```

---

# Step 2 – Initialize Docker Swarm

On the manager node:

```bash
docker swarm init
```

Copy the worker join token.

Check cluster status:

```bash
docker node ls
```

On each worker node, run the join command provided by the manager.

Verify that all nodes are in the `Ready` state.

---

# Step 3 – Install Jenkins

Run the Jenkins installation script.

```bash
sh scripts/jenkins.sh
```

Open Jenkins:

```
http://<JENKINS_PUBLIC_IP>:8080
```

Unlock Jenkins:

```bash
cat /var/lib/jenkins/secrets/initialAdminPassword
```

Complete the initial setup and install the recommended plugins.

---

# Step 4 – Configure Jenkins

Create a Pipeline project.

Configure the project to use the `Jenkinsfile` stored in this repository.

Add Docker Hub credentials in:

```
Manage Jenkins

---

# Step 5 – Build the Docker Image

The pipeline automatically executes:

```bash
docker build -t IMAGE_NAME .
```

This creates a custom Docker image using the provided `Dockerfile`.

---

# Step 6 – Tag the Image

The image is tagged before pushing.

Example:

```bash
docker tag IMAGE_NAME dockerhub-user/repository:latest
```

---

# Step 7 – Push to Docker Hub

Authenticate with Docker Hub.

```bash
docker login
```

Push the image.

```bash
docker push dockerhub-user/repository:latest
```

The image is now available in the Docker Hub registry.

---

# Step 8 – Deploy with Docker Stack

Deploy the application.

```bash
docker stack deploy -c docker-compose.yml paytm
```

Verify deployment.

```bash
docker stack ls

docker service ls

docker ps
```

---

# Step 9 – Verify the Application

Open the application in a browser.

```
http://<SERVER_PUBLIC_IP>
```

The sample web application should load successfully.

---

# Docker Compose

The `docker-compose.yml` file defines multiple services and their deployment configuration.

Features include:

- Multiple services
- Port mapping
- Docker volumes
- Service replicas
- Swarm deployment

---

# Jenkins Pipeline

The Jenkins pipeline performs the following stages:

1. Checkout source code
2. Build Docker image
3. Tag Docker image
4. Push image to Docker Hub
5. Deploy using Docker Stack

---

# Repository Structure

```
docker-swarm-cicd-pipeline/
│
├── README.md
├── Jenkinsfile
├── Dockerfile
├── docker-compose.yml
├── index.html
├── .gitignore
├── LICENSE
│
├── scripts/
│   └── jenkins.sh
│
├── docs/
│   └── setup-guide.md
│
└── images/
```

---

# Skills Demonstrated

- Docker
- Docker Compose
- Docker Swarm
- Docker Stack
- Jenkins
- Git & GitHub
- Docker Hub
- Linux Administration
- CI/CD Pipeline
- Container Orchestration

---

# Future Enhancements

- Kubernetes Deployment
- SonarQube Integration
- Trivy Image Scanning
- Terraform Infrastructure
- AWS ECS Deployment
- GitHub Webhooks
- Automated Rollback Strategy
