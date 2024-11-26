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
    subscription_id      = var.subscription_id
    resource_group_name  = var.backend_resource_group_name
    storage_account_name = var.backend_storage_account_name
    container_name       = var.backend_container_name
    key                  = var.backend_key
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
