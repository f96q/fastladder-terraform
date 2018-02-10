module "fastladder" {
  fastladder = "${lookup(var.config, "${terraform.workspace}.fastladder")}"
  source = "./modules/fastladder"
}