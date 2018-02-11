resource "aws_s3_bucket" "fastladder_backup" {
  bucket = "${var.fastladder}-backup"
}
