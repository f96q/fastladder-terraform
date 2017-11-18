resource "aws_ecr_repository" "fastladder" {
  count = "${var.aws_ecr_repository_create ? 1 : 0}"
  name = "${var.fastladder}"
}
