resource "aws_cloudwatch_log_group" "fastladder_rails" {
  name = "${var.fastladder}-rails"
  retention_in_days = 1
}

resource "aws_cloudwatch_log_group" "fastladder_mysql" {
  name = "${var.fastladder}-mysql"
  retention_in_days = 1
}
