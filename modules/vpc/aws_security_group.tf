resource "aws_security_group" "fastladder_ec2" {
  name = "${var.fastladder}-ec2"
  vpc_id = "${aws_default_vpc.default.id}"

  ingress = {
    from_port = 80
    to_port   = 80
    protocol  = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }
  
  egress {
    from_port   = 0
    to_port     = 0
    protocol    = "-1"
    cidr_blocks = ["0.0.0.0/0"]
  }

  tags {
    Name = "${var.fastladder}-ec2"
  }
}
