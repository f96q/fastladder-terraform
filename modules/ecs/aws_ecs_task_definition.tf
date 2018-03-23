resource "aws_ecs_task_definition" "fastladder" {
  family = "${var.fastladder}"
  container_definitions = "${data.template_file.aws_ecs_task_definition_fastladder.rendered}"

  volume {
    name = "${var.fastladder}-mysql"
    host_path = "/ecs/${var.fastladder}-mysql"
  }
}
