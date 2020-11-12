variable "location" {
    type = string
    region = "eastus"
}




variable "tags" {
  type = map

  default = {
    Environment = "Terraform GS"
    Dept        = "Engineering"
  }
}




variable "location" {}

variable "tags" {
  type = map

  default = {
    Environment = "Terraform GS"
    Dept        = "Engineering"
  }
}

