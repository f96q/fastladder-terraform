module "ecs" {
  fastladder = "${data.terraform_remote_state.mutable.fastladder}"
  aws_default_subnet_1a_id = "${data.terraform_remote_state.mutable.aws_default_subnet_1a_id}"
  aws_default_vpc_default_id = "${data.terraform_remote_state.mutable.aws_default_vpc_default_id}"
  aws_iam_instance_profile_fastladder_ec2_name = "${data.terraform_remote_state.mutable.aws_iam_instance_profile_fastladder_ec2_name}"
  source = "../../modules/ecs"
}
