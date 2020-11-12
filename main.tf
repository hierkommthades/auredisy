# Configure the Azure provider
terraform {
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


# Create a virtual network within the resource group
resource "azurerm_virtual_network" "example" {
  name                = "example-network"
  resource_group_name = azurerm_resource_group.example.name
  location            = azurerm_resource_group.example.location
  address_space       = ["10.0.0.0/16"]

    tags = {
    Environment = "Terraform Getting Started"
    Team = "DevOps"
  }
}