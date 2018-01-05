data "template_file" "aws_instance_fastladder_user_data" {
  template = "${file("user_data/ecs.sh.tpl")}"

  vars {
    ecs_cluster = "${var.fastladder}"
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
  image_id      = "${data.aws_ami.ecs_optimized.id}"
  instance_type = "${var.aws_launch_configuration_fastladder_instance_type}"
  iam_instance_profile = "${aws_iam_instance_profile.fastladder_ec2.name}"
  security_groups = ["${aws_security_group.fastladder_ec2.id}"]
  user_data       = "${data.template_file.aws_instance_fastladder_user_data.rendered}"
  associate_public_ip_address = true
  spot_price = "${var.aws_launch_configuration_fastladder_spot_price}"

  lifecycle {
    create_before_destroy = true
  }
}
