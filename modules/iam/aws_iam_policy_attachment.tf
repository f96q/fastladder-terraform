resource "aws_iam_policy_attachment" "fastladder_ecs" {
  name = "${var.fastladder}-ecs"
  roles = ["${aws_iam_role.fastladder_ec2.name}"]
  policy_arn = "arn:aws:iam::aws:policy/service-role/AmazonEC2ContainerServiceforEC2Role"
}

resource "aws_iam_policy_attachment" "fastladder_s3" {
  name = "${var.fastladder}-s3"
  roles = ["${aws_iam_role.fastladder_ec2.name}"]
  policy_arn = "${aws_iam_policy.fastladder_s3.arn}"
}
