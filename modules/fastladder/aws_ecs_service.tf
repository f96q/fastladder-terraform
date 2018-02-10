resource "aws_ecs_service" "fastladder" {
  name                               = "${var.fastladder}"
  cluster                            = "${aws_ecs_cluster.fastladder.id}"
  task_definition                    = "${aws_ecs_task_definition.fastladder.arn}"
  desired_count                      = 1
}
