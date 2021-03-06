# Configure the Azure provider
terraform {



  backend "azurerm" {
    storage_account_name = "afsstr00"
    container_name       = "terraform"
    key                  = "terraform.tfstate"
    use_msi              = true
    subscription_id      = "fdfdb5ca-21e2-489a-927e-73f7122d9ddf"
    tenant_id            = "2545989e-0855-40fc-8985-8d3bd416e901"
    access_key           = "GvTvhrQdaHL8aKogNZEK8ofox/Z54xsiq+AeSbXCaKkep6wX6906daY9nwfwAEVuvnqCTCsSRTe1ammvxvzGdQ=="
  }




  required_providers {
    azurerm = {
      source = "hashicorp/azurerm"
      version = ">= 2.26"
    }
  }
}

provider "azurerm" {
  features {}
}





resource "azurerm_resource_group" "rg" {
  name     = "AFS_JA_TEST"
  location = "eastus"

  tags = {
    Environment = "Test"
    Team = "DevOps"
    "Dept" = "ITS"
    "Status"="Dev"
  }
}
