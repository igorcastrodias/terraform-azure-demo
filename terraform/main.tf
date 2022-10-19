resource "azurerm_resource_group" "resource_group_terraform_demo" {
  name     = "rg-terraform-demo"
  location = "eastus"
}

module "storage_account" {
  source                   = "git::https://github.com/igorcastrodias/terraform-azure-modules.git//storage-account?ref=main"

  storage_account_name     = "stoterraformdemo002"
  resource_group_name      = azurerm_resource_group.resource_group_terraform_demo.name
  storage_account_location = azurerm_resource_group.resource_group_terraform_demo.location
}