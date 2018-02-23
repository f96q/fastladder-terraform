variable "config" {
  default = {
    default.fastladder = "fastladder"
    stg.fastladder = "fastladder-stg"
    prod.fastladder = "fastladder-prod"
  }
}
