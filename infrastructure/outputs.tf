output "ecr_repo_url" {
  value = aws_ecr_repository.node_app.repository_url
}
output "load_balancer_dns" {
  value = aws_lb.app_lb.dns_name
}
