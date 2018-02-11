data "template_file" "fastladder_backup_policy" {
  template = "${file("../../modules/iam/policies/fastladder_backup_policy.json.tpl")}"

  vars {
    bucket = "${var.fastladder}-backup"
  }
}

resource "aws_iam_policy" "fastladder_backup" {
  name = "${var.fastladder}-backup"
  policy = "${data.template_file.fastladder_backup_policy.rendered}"
}
