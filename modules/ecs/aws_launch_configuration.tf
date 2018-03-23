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
