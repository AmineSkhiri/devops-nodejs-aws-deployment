# 🚀 Full DevOps Node.js Deployment on AWS (Docker + Terraform + ECR + ECS + GitHub Actions)

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

## 🎯 Features

- 🐳 Dockerized Node.js app
- ☁️ Push to AWS ECR
- 🔧 Provisioning via Terraform
- 🚀 ECS deployment (Fargate)
- 🔁 GitHub Actions pipeline for build and deploy
- 📄 Clean, modular repo structure

---

## 📁 Project Structure

.
├── app/ # Node.js app code
│ └── index.js
├── Dockerfile # Defines Docker image
├── .github/workflows/
│ └── deploy.yml # GitHub Actions pipeline
├── infrastructure/ # Terraform IaC
│ ├── main.tf
│ ├── variables.tf
│ ├── provider.tf
│ ├── outputs.tf
│ └── terraform.tfvars
├── devops_project_flow.png # Diagram of workflow
└── README.md

yaml
Copier
Modifier

---

## 📊 System Architecture

![Deployment Flow](./devops_project_flow.png)

---

## 🚀 Deployment Steps

### 1. Clone the repository

```bash
git clone https://github.com/your-username/devops-nodejs-aws-deployment.git
cd devops-nodejs-aws-deployment
2. Configure AWS credentials
bash
Copier
Modifier
aws configure
3. Deploy infrastructure with Terraform
bash
Copier
Modifier
cd infrastructure
terraform init
terraform apply
This provisions:

ECR repository

ECS cluster

ECS task definition + Fargate service

4. Build and push Docker image
bash
Copier
Modifier
docker build -t app-name .
docker tag app-name:latest <your-ecr-url>
docker push <your-ecr-url>
5. (Optional) Use CI/CD via GitHub Actions
On push to main, GitHub Actions will:

Build the Docker image

Push it to ECR

Deploy it to ECS automatically

📌 Why This Project Matters
This repo shows:

✅ Real-world infrastructure automation

✅ Cloud-native deployment skills

✅ Practical use of AWS and DevOps tooling

✅ A clean, testable, and reproducible setup

It’s an ideal showcase for DevOps, Cloud, or Fullstack roles in companies hiring for AWS or infrastructure automation.

👨‍💻 Author
Amine Skhiri
DevOps / Cloud / Fullstack Engineer
📍 Based in Paris | Available for freelance or full-time