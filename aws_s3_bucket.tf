resource "aws_s3_bucket" "fastladder_backup" {
  bucket = "${var.fastladder}-backup"
  count = "${var.aws_s3_bucket_fastladder_backup_create ? 1 : 0}"
}
