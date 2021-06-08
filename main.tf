terraform {
  backend "azurerm" {
    resource_group_name   = "terraformdemoachraf2021-01"
    storage_account_name  = "achrafterraform2021001"
    container_name        = "container2021001"
    access_key = "gHofTwvg3mwmqipHg+r+ahIU/o6ldk1gnUjQOdjNEeZM2fGBHwU/GnutRio5Mnke6Oma7ZsLkz6ocrb5sYWYSQ=="
    key                   = "terraform.tfstate"
    # key                   = "gHofTwvg3mwmqipHg+r+ahIU/o6ldk1gnUjQOdjNEeZM2fGBHwU/GnutRio5Mnke6Oma7ZsLkz6ocrb5sYWYSQ=="
  }
}

# Configure the Azure provider
provider "azurerm" { 
  # The "feature" block is required for AzureRM provider 2.x. 
  # If you are using version 1.x, the "features" block is not allowed.
  subscription_id = "c40d61e0-25eb-4bf7-93a4-e0a4c47e4f63"
  client_id = "95372905-72fa-4936-81f0-cc03ee5687b7"
  client_secret = "ReReGl_Rdsa6GpMUYycF9papUf1dE_dPC7"
  tenant_id = "b5ddb5f6-c713-48e9-a93d-d9fa7d6d6ae8"
  version = "~>2.0"
  features {}
}

resource "azurerm_resource_group" "state-demo-secure" {
  name     = "state-demo"
  location = "eastus"
}