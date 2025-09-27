resource "azurerm_storage_account" "example" {
  name                     = "nandinistgaccdev1"
  resource_group_name      = "nandini-dev"
  location                 = "West Europe"
  account_tier             = "Standard"
  account_replication_type = "GRS"
}