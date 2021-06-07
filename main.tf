terraform {
  backend "azurerm" {
    resource_group_name   = "terraformdemoachraf2021-01"
    storage_account_name  = "achrafterraform2021001"
    container_name        = "container2021001"
    key                   = "gHofTwvg3mwmqipHg+r+ahIU/o6ldk1gnUjQOdjNEeZM2fGBHwU/GnutRio5Mnke6Oma7ZsLkz6ocrb5sYWYSQ=="
  }
}

# Configure the Azure provider
provider "azurerm" { 
  # The "feature" block is required for AzureRM provider 2.x. 
  # If you are using version 1.x, the "features" block is not allowed.
  version = "~>2.0"
  features {}
}

resource "azurerm_resource_group" "state-demo-secure" {
  name     = "state-demo"
  location = "eastus"
}