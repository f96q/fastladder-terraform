terraform {
  backend "s3" {
    bucket = "fastladder-terraform"
    key    = "immutable/terraform.tfstate"
    region = "ap-northeast-1"
  }
}

data "terraform_remote_state" "mutable" {
  backend = "s3"
  config {
    bucket = "fastladder-terraform"
    key    = "env:/${terraform.workspace}/mutable/terraform.tfstate"
    region = "ap-northeast-1"
  }
}
