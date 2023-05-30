terraform {
  backend "azurerm" {
    storage_account_name = "srinath1202"
    container_name       = "tfstate"
    key                  = "terraform.tfstate"
    resource_group_name = "practicepocproject"
  }
}
