resource "aws_s3_bucket" "fastladder_s3" {
  bucket = "${var.fastladder}"
}