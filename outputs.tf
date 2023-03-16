output "backend_path" {
  description = "Path of K8s Auth backend"
  value       = vault_auth_backend.kubernetes.path
}
