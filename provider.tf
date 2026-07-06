terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "~> 4.0"
    }
  }
}

provider "azurerm" {
  features {}
subscription_id = "ea653370-1326-4c22-9cab-7da230c00dc8"
}
