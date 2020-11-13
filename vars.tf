
variable "EASTUS" {
    type = string
    description = "Azure location of terraform server environment"
    default = "eastus"
}



variable "tags" {
  type = map

  default = {
    Environment = "Terraform GS"
    Dept        = "Engineering"
  }
}
