terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = ">= 3.100"
    }
    azapi = {
      source  = "Azure/azapi"
      version = "~> 1.12"
    }
  }
}

# Setup providers
provider "azapi" {
}

provider "azurerm" {
  features {}
  storage_use_azuread = true
}
