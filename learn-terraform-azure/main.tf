terraform {
  required_version = ">= 1.1.0"
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "~> 3.0.2"
    }
  }
  cloud {
    organization = "example-org-019372"
    workspaces {
      name = "learn-terraform-azure"
    }
  }
}

provider "azurerm" {
  features {}
}

resource "azurerm_resource_group" "rg" {
  name     = var.resource_group_name
  location = "westeurope"
  tags = {
    environment = "Terraform Demo"
    team = "DevOps"
  }
}

resource "azurerm_virtual_network" "vnet" {
  name = "myTFVnet"
  address_space = [ "10.0.0.0/16" ]
  location = "westeurope"
  resource_group_name = azurerm_resource_group.rg.name
}
