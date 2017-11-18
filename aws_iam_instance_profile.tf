resource "aws_iam_instance_profile" "fastladder_ec2" {
  name = "${var.fastladder}-ec2"
  role = "${aws_iam_role.fastladder_ec2.name}"
}
