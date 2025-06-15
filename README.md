#  Full DevOps Node.js Deployment on AWS 
(Docker + Terraform + ECR + ECS + GitHub Actions)

This project demonstrates a full **DevOps pipeline** for deploying a Node.js application to AWS using modern tools and cloud services. It features **Docker**, **Terraform**, **ECR**, **ECS Fargate**, and **GitHub Actions** for CI/CD — closely aligned with real-world DevOps practices.

---

## 📦 Technologies

- **Node.js** — simple backend application
- **Docker** — containerization
- **Terraform** — Infrastructure as Code (IaC)
- **AWS ECR** — container registry
- **AWS ECS Fargate** — serverless container hosting
- **GitHub Actions** — CI/CD automation

---
## 📊 Architecture Diagram

![Full DevOps AWS Pipeline](./full_devops_aws_pipeline.png)

## 🎯 Features

- 🐳 Dockerized Node.js app
- ☁️ Push to AWS ECR
- 🔧 Provisioning via Terraform
- 🚀 ECS deployment (Fargate)
- 🔁 GitHub Actions pipeline for build and deploy
- 📄 Clean, modular repo structure

---
# DevOps Node.js AWS ECS Deployment

This project demonstrates a complete CI/CD pipeline to deploy a Node.js app using:

- Docker
- AWS ECS (Fargate)
- ECR (Elastic Container Registry)
- Application Load Balancer (ALB)
- Terraform for IaC
- GitHub Actions for CI/CD

## Health Check

This app returns a `200 OK` response on `/`.

## Deployment Flow

1. Push code to GitHub
2. GitHub Actions builds Docker image and pushes to ECR
3. ECS automatically deploys the updated container
4. ALB exposes the app on the internet
