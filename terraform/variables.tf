variable "location" {
  description = "Azure region used for the Week 08 resources"
  type        = string
  default     = "Australia East"
}

variable "resource_group_name" {
  description = "Resource Group name"
  type        = string
}

variable "acr_name" {
  description = "Azure Container Registry name"
  type        = string
}

variable "storage_account_name" {
  description = "Azure Storage Account name"
  type        = string
}

variable "aks_cluster_name" {
  description = "Azure Kubernetes Service cluster name"
  type        = string
}

variable "aks_dns_prefix" {
  description = "DNS prefix for AKS"
  type        = string
}

variable "aks_node_count" {
  description = "Number of AKS worker nodes"
  type        = number
  default     = 3
}

variable "aks_node_vm_size" {
  description = "VM size used by the AKS node pool"
  type        = string
  default     = "Standard_D2s_v6"
}

variable "environment" {
  description = "Environment identifier"
  type        = string
  default     = "development"
}

variable "tags" {
  description = "Common Azure resource tags"
  type        = map(string)
  default     = {}
}

variable "student_profile_container_name" {
  description = "Blob container for student profile photos"
  type        = string
  default     = "student-profile-photo"
}

variable "lecturer_profile_container_name" {
  description = "Blob container for lecturer profile photos"
  type        = string
  default     = "lecturer-profile-photo"
}