variable "aws_region" {
  description = "AWS region to deploy to"
  default     = "us-east-1"  # You can change this if needed
}

variable "ecr_repo_name" {
  description = "Name of the ECR repository"
  default     = "devops-nodejs-app"
}

variable "aws_access_key" {
  description = "AWS Access Key"
  type        = string
}

variable "aws_secret_key" {
  description = "AWS Secret Access Key"
  type        = string
}
