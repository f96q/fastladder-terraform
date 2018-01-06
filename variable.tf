variable "fastladder" {
  default = "fastladder"
}

variable "aws_spot_fleet_request_fastladder_instance_type" {
  default = "t2.micro"
}

variable "aws_spot_fleet_request_fastladder_spot_price" {
  default = "0.0036"
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

variable "aws_spot_fleet_request_fastladder_target_capacity" {
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
