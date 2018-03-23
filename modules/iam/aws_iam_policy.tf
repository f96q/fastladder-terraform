resource "aws_iam_policy" "fastladder_s3" {
  name = "${var.fastladder}-s3"
  policy = "${data.template_file.fastladder_s3_policy.rendered}"
}