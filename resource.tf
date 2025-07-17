resource "azurerm_resource_group" "terra-azure" {
  name     = "casestudy-Terraform"
  location = "East US"
}
resource "azurerm_storage_account" "terraStorage" {
  name                     = "hari0103strgacc"    # must be globally unique
  resource_group_name      = azurerm_resource_group.terraAzure.name
  location                 = azurerm_resource_group.terraAzure.location
  account_tier             = "Standard"
  account_replication_type = "LRS"

  tags = {
    environment = "CaseStudy"
  }
}