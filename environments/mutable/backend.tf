terraform {
  backend "s3" {
    bucket = "fastladder-terraform"
    key    = "mutable/terraform.tfstate"
    region = "ap-northeast-1"
  }
}
