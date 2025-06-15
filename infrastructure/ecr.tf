resource "aws_ecr_repository" "node_app" {
  name         = var.ecr_repo_name
  force_delete = true
}