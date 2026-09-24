output "resource_group_name" {
  description = "Resource Group name"
  value       = azurerm_resource_group.rg.name
}

output "acr_name" {
  description = "Azure Container Registry name"
  value       = azurerm_container_registry.acr.name
}

output "acr_login_server" {
  description = "Azure Container Registry login server"
  value       = azurerm_container_registry.acr.login_server
}

output "aks_cluster_name" {
  description = "AKS cluster name"
  value       = azurerm_kubernetes_cluster.aks.name
}

output "storage_account_name" {
  description = "Storage Account name"
  value       = azurerm_storage_account.storage.name
}

output "storage_connection_string" {
  description = "Azure Storage Account connection string"
  value       = azurerm_storage_account.storage.primary_connection_string
  sensitive   = true
}

output "aks_get_credentials_command" {
  description = "Command used to connect kubectl to AKS"

  value = "az aks get-credentials --resource-group ${azurerm_resource_group.rg.name} --name ${azurerm_kubernetes_cluster.aks.name} --overwrite-existing"
}

output "acr_login_command" {
  description = "Command used to login to ACR"

  value = "az acr login --name ${azurerm_container_registry.acr.name}"
}

output "student_profile_container" {
  description = "Student profile photo blob container"
  value       = azurerm_storage_container.student_profile.name
}

output "lecturer_profile_container" {
  description = "Lecturer profile photo blob container"
  value       = azurerm_storage_container.lecturer_profile.name
}