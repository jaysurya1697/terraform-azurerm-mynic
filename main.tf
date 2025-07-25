terraform {
  required_version = " >= 1.0.0"
  required_providers {
    azurerm ={
       source = "hashicorp/azurerm"
       version = ">= 2.0.0"
    }
    random = {
        source = "hashicorp/random"
        version = "3.7.2"
    }
  }
}

provider "azurerm" {
    features {
      
    }
  subscription_id = "cc2bdbbe-b3e2-4b1d-8970-15b2e6e2ea09"
}
resource "random_string" "myrandom" {
    length = 8
    upper = false
    special = false
  
}
resource "azurerm_resource_group" "my-rg" {
    name = var.rgname
    location = var.loc
     
}

