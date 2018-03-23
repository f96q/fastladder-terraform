data "template_file" "fastladder_s3_policy" {
  template = "${file("../../modules/iam/policies/fastladder_s3_policy.json.tpl")}"

  vars {
    bucket = "${var.fastladder}"
  }
}
