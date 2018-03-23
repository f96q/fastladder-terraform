data "aws_region" "current" {

}

data "aws_caller_identity" "current" {

}

data "template_file" "aws_instance_fastladder_user_data" {
  template = "${file("../../modules/ecs/user_data/ecs.sh.tpl")}"

  vars {
    fastladder = "${var.fastladder}"
  }
}

data "aws_ami" "ecs_optimized" {
  most_recent = true
  owners      = ["amazon"]

  filter {
    name   = "architecture"
    values = ["x86_64"]
  }

  filter {
    name   = "root-device-type"
    values = ["ebs"]
  }

  filter {
    name   = "name"
    values = ["amzn-ami-*-amazon-ecs-optimized"]
  }

  filter {
    name   = "virtualization-type"
    values = ["hvm"]
  }

  filter {
    name   = "block-device-mapping.volume-type"
    values = ["gp2"]
  }
}

data "template_file" "aws_ecs_task_definition_fastladder" {
  template = "${file("../../modules/ecs/task_definitions/fastladder.json.tpl")}"

  vars {
    account_id = "${data.aws_caller_identity.current.account_id}"
    aws_region = "${data.aws_region.current.name}"
    fastladder = "${var.fastladder}"
    fastladder_rails_secret_key_base = "${var.fastladder_rails_secret_key_base}"
    fastladder_rails_memory = "${var.aws_ecs_task_definition_fastladder_rails_memory}"
    fastladder_mysql_memory = "${var.aws_ecs_task_definition_fastladder_mysql_memory}"
    fastladder_mysql_database = "${var.fastladder}"
    fastladder_mysql_root_password = "${var.aws_ecs_task_definition_fastladder_mysql_root_password}"
  }
}
