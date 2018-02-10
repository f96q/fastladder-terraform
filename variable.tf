variable "config" {
  default = {
    default.fastladder = "fastladder"
    dev.fastladder = "fastladder-dev"
    stg.fastladder = "fastladder-stg"
    prod.fastladder = "fastladder-prod"
  }
}
