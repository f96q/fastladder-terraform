variable "fastladder" {
  default = "fastladder"
}

variable "aws_instance_fastladder_instance_type" {
  default = "t2.micro"
}

variable "aws_ecs_task_definition_fastladder_rails_memory" {
  default = "512"
}

variable "aws_ecs_task_definition_fastladder_mysql_memory" {
  default = "384"
}

variable "aws_ecs_task_definition_fastladder_mysql_root_password" {}

variable "aws_ecr_repository_create" {
  default = "true"
}

variable "fastladder_secret_key_base" {}
