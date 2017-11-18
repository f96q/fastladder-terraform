resource "aws_iam_role" "fastladder_ec2" {
  name = "${var.fastladder}-ec2"
  assume_role_policy = "${file("policies/ec2_assume_role_policy.json")}"
}
