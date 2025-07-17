resource "azurerm_resource_group" "example" {

  name     = "harika-resources"

  location = "East US"

}
 
resource "azurerm_storage_account" "example" {

  name                     = "hari0103strg"

resource_group_name = azurerm_resource_group.example.name

  location                 = azurerm_resource_group.example.location

  account_tier             = "Standard"

  account_replication_type = "LRS"

}

resource "azurerm_storage_container" "example" {

  name                  = "example-container0103"

storage_account_name = azurerm_storage_account.example.name

  container_access_type = "private"

}
 