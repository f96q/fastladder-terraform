variable "fastladder" {
  default = "fastladder"
}

variable "aws_launch_configuration_fastladder_instance_type" {
  default = "t2.micro"
}

variable "aws_launch_configuration_fastladder_spot_price" {
  default = 0.0152
}

variable "aws_ecs_task_definition_fastladder_rails_memory" {
  default = 512
}

variable "aws_ecs_task_definition_fastladder_mysql_memory" {
  default = 256
}

variable "aws_autoscaling_group_fastladder_min_size" {
  default = 1
}

variable "aws_autoscaling_group_fastladder_max_size" {
  default = 1
}

variable "aws_ecs_task_definition_fastladder_mysql_root_password" {
  default = ""
}

variable "fastladder_rails_secret_key_base" {
  default = ""
}

variable "aws_default_subnet_1a_id" {
  default = ""
}

variable "aws_default_subnet_1c_id" {
  default = ""
}

variable "aws_iam_instance_profile_fastladder_ec2_name" {
  default = ""
}

variable "aws_security_group_fastladder_ec2_id" {
  default = ""
}

variable "aws_launch_configuration_fastladder_key_name" {
  default = ""
}