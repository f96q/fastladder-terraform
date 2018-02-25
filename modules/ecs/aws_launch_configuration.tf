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

resource "aws_launch_configuration" "fastladder" {
  name_prefix = "${var.fastladder}"
  image_id      = "${data.aws_ami.ecs_optimized.id}"
  instance_type = "${var.aws_launch_configuration_fastladder_instance_type}"
  spot_price    = "${var.aws_launch_configuration_fastladder_spot_price}"
  iam_instance_profile = "${var.aws_iam_instance_profile_fastladder_ec2_name}"
  security_groups = ["${var.aws_security_group_fastladder_ec2_id}"]
  user_data       = "${data.template_file.aws_instance_fastladder_user_data.rendered}"
  associate_public_ip_address = true

  lifecycle {
    create_before_destroy = true
  }
}
