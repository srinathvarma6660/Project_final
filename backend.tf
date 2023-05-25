terraform {
  backend "azurerm" {
    storage_account_name = "pocprojectstorageac"
    container_name       = "poccontainer"
    key                  = "terraform.tfstate"
    resource_group_name = "pocprojectrg"
  }
}
