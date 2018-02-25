output "fastladder" {
  value = "${module.config.fastladder}"
}

output "aws_iam_instance_profile_fastladder_ec2_name" {
  value = "${module.iam.aws_iam_instance_profile_fastladder_ec2_name}"
}

output "aws_default_subnet_1a_id" {
  value = "${module.vpc.aws_default_subnet_1a_id}"
}

output "aws_default_subnet_1c_id" {
  value = "${module.vpc.aws_default_subnet_1c_id}"
}

output "aws_security_group_fastladder_ec2_id" {
  value = "${module.vpc.aws_security_group_fastladder_ec2_id}"
}