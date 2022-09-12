terraform {
  required_providers {
    azurerm = {
      source = "hashicorp/azurerm"
      version = "~>2.0"
    }
  }
}

provider "azurerm" {
  features {}
}

terraform {
  backend "azurerm" {}
}

resource "azurerm_static_site" "web" {
  name = "coles-specials"
  resource_group_name = "ColesRG"
  location = "eastasia"
} 