resource "aws_iam_policy_attachment" "fastladder_ecs" {
  name = "${var.fastladder}-ecs"
  roles = ["${aws_iam_role.fastladder_ec2.name}"]
  policy_arn = "arn:aws:iam::aws:policy/service-role/AmazonEC2ContainerServiceforEC2Role"
}
