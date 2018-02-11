output "fastladder" {
  value = "${module.common.fastladder}"
}

output "aws_iam_instance_profile_fastladder_ec2_name" {
  value = "${module.iam.aws_iam_instance_profile_fastladder_ec2_name}"
}

output "aws_default_vpc_default_id" {
  value = "${module.vpc.aws_default_vpc_default_id}"
}

output "aws_default_subnet_1a_id" {
  value = "${module.vpc.aws_default_subnet_1a_id}"
}