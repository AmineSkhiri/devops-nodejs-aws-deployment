variable "aws_region" {
  default = "us-east-1"
}

variable "aws_access_key" {
  description = "AWS Access Key"
  type        = string
}

variable "aws_secret_key" {
  description = "AWS Secret Key"
  type        = string
  sensitive   = true
}

variable "ecr_image_url" {
  description = "ECR image to deploy"
}
variable "ecr_repo_name" {
  description = "Name of the ECR repository"
  type        = string
  default     = "devops-nodejs-app"
}