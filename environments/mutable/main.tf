module "config" {
  fastladder ="${lookup(var.config, "${terraform.workspace}.fastladder", var.config["default.fastladder"])}"
  source = "../../modules/config"
}

module "vpc" {
  source = "../../modules/vpc"
}

module "iam" {
  fastladder = "${module.config.fastladder}"
  source = "../../modules/iam"
}

module "ecr" {
  fastladder = "${module.config.fastladder}"
  source = "../../modules/ecr"
}

module "s3" {
  fastladder = "${module.config.fastladder}"
  source = "../../modules/s3"
}
