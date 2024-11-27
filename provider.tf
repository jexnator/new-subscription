//***********************************************************
// provider.tf
//
// Description:
// This file contains provider configuration for Azure and 
// Azure Active Directory to allow Terraform to interact with 
// the Azure environment.
//
//***********************************************************

terraform {
  required_version = ">= 1.9.8"
  backend "azurerm" {
    subscription_id      = "c60aafda-2e3a-4320-a98a-0e1e2466e042"
    resource_group_name  = "dev-ressgr-terraform"
    storage_account_name = "pocmarti"
    container_name       = "terraform-state"
    key                  = "dev-terraform.tfstate"
  }
}

# Azure Provider
provider "azurerm" {
  features {}
  subscription_id = var.subscription_id
}

# Azure Active Directory Provider
provider "azuread" {
  tenant_id = var.tenant_id
}
