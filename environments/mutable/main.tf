module "common" {
  fastladder ="${lookup(var.common, "${terraform.workspace}.fastladder", var.app["default.fastladder"])}"
  source = "../../modules/common"
}

module "vpc" {
  source = "../../modules/vpc"
}

module "iam" {
  fastladder = "${module.common.fastladder}"
  source = "../../modules/iam"
}

module "ecr" {
  fastladder = "${module.common.fastladder}"
  source = "../../modules/ecr"
}

module "s3" {
  fastladder = "${module.common.fastladder}"
  source = "../../modules/s3"
}
