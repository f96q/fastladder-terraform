module "vpc" {
  fastladder = "${lookup(var.config, "${terraform.workspace}.fastladder", var.config["default.fastladder"])}"
  source = "../../modules/vpc"
}

module "iam" {
  fastladder = "${module.vpc.fastladder}"
  source = "../../modules/iam"
}

module "ecr" {
  fastladder = "${module.vpc.fastladder}"
  source = "../../modules/ecr"
}

module "s3" {
  fastladder = "${module.vpc.fastladder}"
  source = "../../modules/s3"
}