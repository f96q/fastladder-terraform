output "fastladder" {
  value = "${var.fastladder}"
}

output "aws_default_subnet_1a_id" {
  value = "${aws_default_subnet.1a.id}"
}

output "aws_default_subnet_1c_id" {
  value = "${aws_default_subnet.1c.id}"
}

output "aws_security_group_fastladder_ec2_id" {
  value = "${aws_security_group.fastladder_ec2.id}"
}
