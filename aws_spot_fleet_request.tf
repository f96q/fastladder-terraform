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

resource "aws_spot_fleet_request" "fastladder" {
  iam_fleet_role  = "arn:aws:iam::${data.aws_caller_identity.current.account_id}:role/aws-ec2-spot-fleet-tagging-role"
  spot_price      = "${var.aws_spot_fleet_request_fastladder_spot_price}"
  target_capacity = "${var.aws_spot_fleet_request_fastladder_target_capacity}"
  valid_until     = "2019-11-04T20:44:20Z"
  terminate_instances_with_expiration = true

  launch_specification {
    ami = "${data.aws_ami.ecs_optimized.id}"
    instance_type = "${var.aws_spot_fleet_request_fastladder_instance_type}"
    iam_instance_profile = "${aws_iam_instance_profile.fastladder_ec2.name}"
    vpc_security_group_ids = ["${aws_security_group.fastladder_ec2.id}"]
    user_data       = "${data.template_file.aws_instance_fastladder_user_data.rendered}"
    subnet_id       = "${aws_default_subnet.1a.id}"
    associate_public_ip_address = true

    tags {
      Name = "${var.fastladder}"
    }
  }
}
