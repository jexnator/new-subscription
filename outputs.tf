//***********************************************************
// outputs.tf
//
// Description:
// This file defines outputs for the Terraform configuration. 
// These outputs provide information about deployed resources 
// for reference in other scripts or modules.
//
//***********************************************************

output "resource_group_name" {
  value = module.resource_groups.name
}

output "vnet_name" {
  value = module.vnet.vnet_name
}

# output "vnet_peering_id" {
#   value = module.vnet_peering.id
# }

# output "key_vault_id" {
#   value = module.key_vault.key_vault_id
# }

# output "storage_account_id" {
#   value = module.storage_account.storage_account_id
# }

# output "sql_database_name" {
#   value = module.sql_db.sql_database_name
# }
