//***********************************************************
// variables.tf
//
// Description:
// Input variables for backend configuration and other
// parameters used in this Terraform deployment.
//
//***********************************************************

variable "subscription_id" {
  description = "The Azure subscription ID where the resources will be deployed."
  type        = string
}

variable "backend_resource_group_name" {
  description = "Resource group name for the Terraform backend storage account."
  type        = string
}

variable "backend_storage_account_name" {
  description = "Storage account name for Terraform state."
  type        = string
}

variable "backend_container_name" {
  description = "Container name for Terraform state files in the storage account."
  type        = string
}

variable "backend_key" {
  description = "Key (file name) for the Terraform state file."
  type        = string
}

variable "tenant_id" {
  description = "Azure Active Directory Tenant ID."
  type        = string
}

variable "resource_group_base_name" {
  description = "Base name for the resource group."
  type        = string
}

variable "environment" {
  description = "Deployment environment (e.g., dev, prod)."
  type        = string
}

variable "location" {
  description = "Azure region for resource deployment."
  type        = string
}

variable "vnet_name" {
  description = "Name of the virtual network."
  type        = string
}

variable "vnet_address_space" {
  description = "Address space for the virtual network."
  type        = list(string)
}

variable "hub_vnet_id" {
  description = "Resource ID of the target hub virtual network."
  type        = string
}

variable "sql_admin_username" {
  description = "Administrator username for the SQL Server."
  type        = string
}

variable "sql_admin_password" {
  description = "Administrator password for the SQL Server."
  type        = string
}
