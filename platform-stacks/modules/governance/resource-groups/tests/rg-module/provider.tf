terraform {

  required_version = ">=1.8"

  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "~>4.0"
    }
  }

}

provider "azurerm" {

  features {}

  subscription_id = "15e32568-a70b-42c4-85be-afc97e8506f1"
}