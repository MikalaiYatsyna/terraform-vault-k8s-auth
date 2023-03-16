variable "vault_address" {
  type        = string
  description = "Vault http(s) address"
}

variable "vault_token_secret_id" {
  type        = string
  description = "Id vault root token secret in AWS Secret Manager"
  sensitive   = true
}

variable "vault_sa" {
  type        = string
  description = "Vault service account name"
}

variable "cluster_name" {
  type        = string
  description = "Name of EKS cluster"
}

variable "namespace" {
  type        = string
  description = "Namespace of Vault release"
}
