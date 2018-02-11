variable "fastladder" {
  default = "fastladder"
}

variable "aws_spot_fleet_request_fastladder_instance_type" {
  default = "t2.micro"
}

variable "aws_spot_fleet_request_fastladder_spot_price" {
  default = "0.0152"
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

variable "aws_spot_fleet_request_fastladder_valid_until" {
  default = "2019-11-04T20:44:20Z"
}

variable "aws_ecs_task_definition_fastladder_mysql_root_password" {
  default = ""
}

variable "fastladder_secret_key_base" {
  default = ""
}

variable "aws_default_vpc_default_id" {
  default = ""
}

variable "aws_default_subnet_1a_id" {
  default = ""
}

variable "aws_iam_instance_profile_fastladder_ec2_name" {
  default = ""
}
