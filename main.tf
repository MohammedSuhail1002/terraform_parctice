terraform {
  required_providers {
    azurerm = {
      source = "hashicorp/azurerm"
      version = "4.47.0"
    }
  }
}

provider "azurerm" {
  # Configuration options
  features {}

}

resource "azurerm_resource_group" "RG_details" {
  name     = "myrg"
  location = "Central india"
}

resource "azurerm_storage_account" "Storage1" {
  name                     = "mystorage1122334455"
  resource_group_name      = azurerm_resource_group.RG_details.name
  location                 = azurerm_resource_group.RG_details.location
  account_tier             = "Standard"
  account_replication_type = "GRS"

  
}
