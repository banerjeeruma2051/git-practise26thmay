resource "azurerm_resource_group" "example" {

    for_each = var.practise1

  name     = each.value.name
  location = each.value.location
  managed_by = each.value.managed_by

  
}

resource "azurerm_storage_account" "stg" {
  for_each = var.storage_account
  depends_on = [ azurerm_resource_group.example ]

     name                     = each.key
   resource_group_name      = each.value.resource_group_name
   location                 = each.value.location
   account_tier             = "Standard"
   account_replication_type = "GRS"
  }