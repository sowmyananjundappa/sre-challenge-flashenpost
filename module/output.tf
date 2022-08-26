output "storage_account_id" {
  description = "Id of the storage account created."
  value       = azurerm_storage_account.srechallengeforflaschenpost.id
}

output "primary_access_key" {
  description = "Name of the storage account created."
  value       = azurerm_storage_account.srechallengeforflaschenpost.primary_access_key
  sensitive   = true
}

output "primary_connection_str" {
  description = "Name of the storage account created."
  value       = azurerm_storage_account.srechallengeforflaschenpost.primary_connection_string
  sensitive   = true
}

output "container_id" {
  description = "Name of the storage account created."
  value       = azurerm_storage_container.srechallengeforflaschenpost.resource_manager_id
}