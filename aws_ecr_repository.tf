resource "aws_ecr_repository" "fastladder" {
  count = "${var.aws_ecr_repository_create ? 1 : 0}"
  name = "${var.fastladder}"
}

resource "aws_ecr_repository" "fastladder_backup" {
  count = "${var.aws_ecr_repository_create ? 1 : 0}"
  name = "${var.fastladder}-backup"
}
