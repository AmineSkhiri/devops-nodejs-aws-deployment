resource "aws_ecs_cluster" "node_cluster" {
  name = "nodejs-cluster"
}

resource "aws_ecs_task_definition" "node_task" {
  family                   = "node-task"
  requires_compatibilities = ["FARGATE"]
  network_mode             = "awsvpc"
  cpu                      = "256"
  memory                   = "512"
  execution_role_arn       = aws_iam_role.ecs_task_execution.arn

  container_definitions = jsonencode([{
    name      = "node-container",
    image     = var.ecr_image_url,
    essential = true,
    portMappings = [{
      containerPort = 3000,
      hostPort      = 3000
    }]
  }])
}

resource "aws_ecs_service" "node_service" {
  name            = "node-service"
  cluster         = aws_ecs_cluster.node_cluster.id
  task_definition = aws_ecs_task_definition.node_task.arn
  desired_count   = 1
  launch_type     = "FARGATE"

  network_configuration {
    subnets         = data.aws_subnets.default.ids
    security_groups = [aws_security_group.ecs_sg.id]
    assign_public_ip = true
  }

  load_balancer {
    target_group_arn = aws_lb_target_group.app_tg.arn
    container_name   = "node-container"
    container_port   = 3000
  }

  depends_on = [aws_lb_listener.app_listener]
}
