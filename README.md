# DevOps Node.js AWS ECS & EKS Deployment

This project demonstrates a complete CI/CD pipeline to deploy a Node.js app using:

- Docker  
- AWS ECS (Fargate) or AWS EKS (Kubernetes) ✅  
- ECR (Elastic Container Registry)  
- Application Load Balancer (ALB)  
- Terraform for Infrastructure as Code (IaC)  
- GitHub Actions for CI/CD  
- CloudWatch for monitoring and logs  

---

## Health Check

This app returns a `200 OK` response on `/`.

---

## Deployment Flow

1. Push code to GitHub  
2. GitHub Actions builds Docker image and pushes to ECR  
3. **ECS or EKS** automatically deploys the updated container  
4. ALB exposes the app on the internet  
5. CloudWatch provides logs and monitoring  

---

## Test Link  
http://nodejs-app-lb-7780150.us-east-1.elb.amazonaws.com/

---

## 📊 Architecture Diagram

![Full DevOps AWS Pipeline](./full_devops_aws_pipeline.png)

---

## 🛡️ Infrastructure & Security (Terraform)

This project includes **real-world AWS infrastructure**, provisioned securely using Terraform:

### ✅ Networking & VPC
- **Custom VPC** with:
  - Isolated **public** and **private subnets**
  - Spread across **multiple Availability Zones**
- **Internet Gateway** for public subnet access
- **NAT Gateway** for internet access from private subnets (for pulling images)
- **Route Tables** linking all resources properly

### ✅ Compute (ECS or EKS)
- **AWS ECS Fargate** (serverless container orchestration)  
  _or_  
- **AWS EKS** (managed Kubernetes cluster)
  - Deployed inside **private subnets**
  - Configured via **Terraform** (IAM roles, security groups, etc.)
  - Supports `kubectl`, `kubeconfig`, and Helm

### ✅ Security Best Practices
- **Security Groups**:
  - ALB allows only port 80 HTTP traffic
  - App containers accessible only within private subnet
- **IAM Roles**:
  - For ECS/EKS task execution
  - For pushing/pulling from ECR
- **CloudWatch Logs** for container and app-level logs

---

You now have the flexibility to demonstrate expertise in both ECS and EKS setups, following DevOps best practices in AWS.

 ### Quick Recap — What We Have Now

✅ Dockerized a Node.js app

✅ Built a full CI/CD pipeline using GitHub Actions

✅ Pushed Docker images to AWS ECR

✅ Deployed app to both:

ECS (Fargate) with an ALB

EKS (Kubernetes) with LoadBalancer

✅ Used Terraform to provision VPC, subnets, EKS cluster, and more

✅ Integrated image versioning ($GITHUB_SHA)

✅ Verified real-time rolling deployments across both environments

