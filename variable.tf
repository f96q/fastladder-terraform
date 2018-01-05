variable "fastladder" {
  default = "fastladder"
}

variable "aws_launch_configuration_fastladder_instance_type" {
  default = "t2.micro"
}

variable "aws_launch_configuration_fastladder_spot_price" {
  default = "0.0071"
}

variable "aws_ecs_task_definition_fastladder_rails_memory" {
  default = "512"
}

variable "aws_ecs_task_definition_fastladder_mysql_memory" {
  default = "256"
}

variable "aws_ecs_task_definition_fastladder_backup_memory" {
  default = "128"
}

variable "aws_autoscaling_group_fastladder_min_size" {
  default = "1"
}

variable "aws_autoscaling_group_fastladder_max_size" {
  default = "1"
}

variable "aws_ecs_task_definition_fastladder_mysql_root_password" {}

variable "aws_ecr_repository_create" {
  default = "true"
}

variable "aws_s3_bucket_fastladder_backup_create" {
  default = "true"
}

variable "fastladder_secret_key_base" {}
