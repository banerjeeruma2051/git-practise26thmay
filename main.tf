terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "4.72.0"
    }
  }
}

provider "azurerm" {
  features {}
  subscription_id = "681bc5ef-e95b-448e-a75c-95b847392d6e"
  tenant_id = "2b0c834c-79b5-4987-8e94-f8deceb635c9"
}
