resource "aws_ecr_repository" "fastladder_rails" {
  name = "${var.fastladder}-rails"
}
