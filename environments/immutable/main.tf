module "ecs" {
  fastladder = "${data.terraform_remote_state.mutable.fastladder}"
  aws_default_subnet_1a_id = "${data.terraform_remote_state.mutable.aws_default_subnet_1a_id}"
  aws_default_subnet_1c_id = "${data.terraform_remote_state.mutable.aws_default_subnet_1c_id}"
  aws_security_group_fastladder_ec2_id = "${data.terraform_remote_state.mutable.aws_security_group_fastladder_ec2_id}"
  aws_iam_instance_profile_fastladder_ec2_name = "${data.terraform_remote_state.mutable.aws_iam_instance_profile_fastladder_ec2_name}"
  aws_autoscaling_group_fastladder_min_size = "${var.aws_autoscaling_group_fastladder_min_size}"
  aws_autoscaling_group_fastladder_max_size = "${var.aws_autoscaling_group_fastladder_max_size}"
  aws_ecs_task_definition_fastladder_mysql_root_password = "${var.aws_ecs_task_definition_fastladder_mysql_root_password}"
  aws_launch_configuration_fastladder_key_name = "${var.aws_launch_configuration_fastladder_key_name}"
  fastladder_rails_secret_key_base = "${var.fastladder_rails_secret_key_base}"
  source = "../../modules/ecs"
}
