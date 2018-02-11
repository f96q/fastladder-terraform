resource "aws_ecr_repository" "fastladder" {
  name = "${var.fastladder}"
}

resource "aws_ecr_repository" "fastladder_backup" {
  name = "${var.fastladder}-backup"
}
