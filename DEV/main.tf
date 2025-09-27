terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "4.40.0"
    }
  }

  backend "azurerm" {
    resource_group_name  = "robinson"
    storage_account_name = "robinteststorage1"         
    container_name       = "mycontainer"
    Key                  = "prod.tfstate"                
  }
}

provider "azurerm" {
  features {}
  subscription_id = "e939c0ee-ab91-49f3-b854-6a4cab5b9219"
}


module "my_rg" {
  source = "../azurerm_rg"
}

module "my_stg" {
  source     = "../azurerm_stg"
  depends_on = [module.my_rg]
}