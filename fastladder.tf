module "fastladder" {
  fastladder = "${lookup(var.config, "${terraform.workspace}.fastladder", var.config['default.fastladder'])}"
  source = "./modules/fastladder"
}