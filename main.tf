//***********************************************************
// main.tf
//
// Description:
// This file configures the infrastructure for a new Azure
// subscription. Modules are sourced directly from the Azure
// DevOps Repo terraform-modules
//
//***********************************************************

# Resource Groups Module
module "resource_groups" {
  source      = "git::https://MartiGroup@dev.azure.com/MartiGroup/DEV-IAC-Terraform/_git/terraform-modules//resource-groups"
  base_name   = var.resource_group_base_name
  environment = var.environment
  location    = var.location
}

https://MartiGroup@dev.azure.com/MartiGroup/DEV-IAC-Terraform/_git/iac-dev-terraform

# Virtual Network Module
module "vnet" {
  source              = "git::https://MartiGroup@dev.azure.com/MartiGroup/DEV-IAC-Terraform/_git/terraform-modules//vnet"
  resource_group_name = module.resource_groups.name
  vnet_name           = var.vnet_name
  address_space       = var.vnet_address_space
  location            = var.location
}

# # VNet Peering Module
# module "vnet_peering" {
#   source              = "git::https://MartiGroup@dev.azure.com/MartiGroup/DEV-IAC-Terraform/_git/terraform-modules//vnet-peering"
#   resource_group_name = module.resource_groups.name
#   vnet_name           = module.vnet.vnet_name
#   hub_vnet_id         = var.hub_vnet_id
# }

# # Key Vault Module
# module "key_vault" {
#   source              = "git::https://MartiGroup@dev.azure.com/MartiGroup/DEV-IAC-Terraform/_git/terraform-modules//key-vault"
#   resource_group_name = module.resource_groups.name
#   base_name           = var.resource_group_base_name
#   location            = var.location
#   environment         = var.environment
#   tenant_id           = var.tenant_id
# }

# # Storage Account Module
# module "storage_account" {
#   source              = "git::https://MartiGroup@dev.azure.com/MartiGroup/DEV-IAC-Terraform/_git/terraform-modules//storage-account"
#   resource_group_name = module.resource_groups.name
#   base_name           = var.resource_group_base_name
#   location            = var.location
#   environment         = var.environment
# }

# # SQL Database Module
# module "sql_db" {
#   source              = "git::https://MartiGroup@dev.azure.com/MartiGroup/DEV-IAC-Terraform/_git/terraform-modules//sql-db"
#   resource_group_name = module.resource_groups.name
#   base_name           = var.resource_group_base_name
#   location            = var.location
#   environment         = var.environment
#   admin_username      = var.sql_admin_username
#   admin_password      = var.sql_admin_password
# }
