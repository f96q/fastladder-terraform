resource "aws_cloudwatch_log_group" "fastladder" {
  name = "${var.fastladder}"
  retention_in_days = 7
}

resource "aws_cloudwatch_log_group" "fastladder_migration" {
  name = "${var.fastladder}-migration"
  retention_in_days = 7
}

resource "aws_cloudwatch_log_group" "fastladder_mysql" {
  name = "${var.fastladder}-mysql"
  retention_in_days = 7
}
