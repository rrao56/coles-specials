terraform {
  required_providers {
    azurerm = {
      source = "hashicorp/azurerm"
      version = "~>2.0"
    }
  }
}

locals {
  resource_group_name = "colesrg05"
  region = "australiasoutheast"
  static_site_name = "coles-specials05"
}

provider "azurerm" {
  features {}
}

terraform {
  backend "azurerm" {}
}

resource "azurerm_resource_group" "rg" {
  name     = local.resource_group_name
  location = local.region
}

resource "azurerm_static_site" "staticsite" {
  name = local.static_site_name
  resource_group_name = local.resource_group_name
  location = "eastasia"
} 