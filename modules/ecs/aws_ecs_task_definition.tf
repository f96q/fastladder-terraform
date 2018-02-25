data "template_file" "aws_ecs_task_definition_fastladder" {
  template = "${file("../../modules/ecs/task_definitions/fastladder.json.tpl")}"

  vars {
    account_id = "${data.aws_caller_identity.current.account_id}"
    aws_region = "${data.aws_region.current.name}"
    fastladder = "${var.fastladder}"
    fastladder_rails_secret_key_base = "${var.fastladder_rails_secret_key_base}"
    fastladder_rails_memory = "${var.aws_ecs_task_definition_fastladder_rails_memory}"
    fastladder_mysql_memory = "${var.aws_ecs_task_definition_fastladder_mysql_memory}"
    fastladder_mysql_database = "${var.fastladder}"
    fastladder_mysql_root_password = "${var.aws_ecs_task_definition_fastladder_mysql_root_password}"
  }
}

resource "aws_ecs_task_definition" "fastladder" {
  family = "${var.fastladder}"
  container_definitions = "${data.template_file.aws_ecs_task_definition_fastladder.rendered}"

  volume {
    name = "${var.fastladder}-mysql"
    host_path = "/ecs/${var.fastladder}-mysql"
  }
}
