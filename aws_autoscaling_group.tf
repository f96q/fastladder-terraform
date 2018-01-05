resource "aws_autoscaling_group" "fastladder" {
  name                 = "${var.fastladder}"
  launch_configuration = "${aws_launch_configuration.fastladder.name}"
  min_size = "${var.aws_autoscaling_group_fastladder_min_size}"
  max_size = "${var.aws_autoscaling_group_fastladder_max_size}"

  vpc_zone_identifier = [
    "${aws_default_subnet.1a.id}",
    "${aws_default_subnet.1c.id}"
  ]
}
