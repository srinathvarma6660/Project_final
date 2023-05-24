terraform {
  backend "azurerm" {
    storage_account_name = "finalpoc1185"
    container_name       = "tfstate"
    key                  = "terraform.tfstate"
    resource_group_name = "Final_POC"
  }
}
