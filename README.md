## Introduction
Terraform module to enable Kubernetes auth in Vault

<!-- BEGIN_TF_DOCS -->
## Requirements

| Name | Version |
|------|---------|
| <a name="requirement_terraform"></a> [terraform](#requirement\_terraform) | 1.7.5 |
| <a name="requirement_aws"></a> [aws](#requirement\_aws) | 4.67.0 |
| <a name="requirement_kubernetes"></a> [kubernetes](#requirement\_kubernetes) | 2.27.0 |
| <a name="requirement_vault"></a> [vault](#requirement\_vault) | 3.14.0 |

## Providers

| Name | Version |
|------|---------|
| <a name="provider_aws"></a> [aws](#provider\_aws) | 4.67.0 |
| <a name="provider_kubernetes"></a> [kubernetes](#provider\_kubernetes) | 2.27.0 |
| <a name="provider_vault"></a> [vault](#provider\_vault) | 3.14.0 |

## Modules

No modules.

## Resources

| Name | Type |
|------|------|
| [vault_auth_backend.kubernetes](https://registry.terraform.io/providers/hashicorp/vault/3.14.0/docs/resources/auth_backend) | resource |
| [vault_kubernetes_auth_backend_config.kubernetes](https://registry.terraform.io/providers/hashicorp/vault/3.14.0/docs/resources/kubernetes_auth_backend_config) | resource |
| [aws_eks_cluster.eks_cluster](https://registry.terraform.io/providers/hashicorp/aws/4.67.0/docs/data-sources/eks_cluster) | data source |
| [aws_eks_cluster_auth.eks_cluster_auth](https://registry.terraform.io/providers/hashicorp/aws/4.67.0/docs/data-sources/eks_cluster_auth) | data source |
| [aws_secretsmanager_secret_version.root_token](https://registry.terraform.io/providers/hashicorp/aws/4.67.0/docs/data-sources/secretsmanager_secret_version) | data source |
| [kubernetes_secret_v1.vault_sa_token](https://registry.terraform.io/providers/hashicorp/kubernetes/2.27.0/docs/data-sources/secret_v1) | data source |
| [kubernetes_service_account.vault_sa](https://registry.terraform.io/providers/hashicorp/kubernetes/2.27.0/docs/data-sources/service_account) | data source |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_cluster_name"></a> [cluster\_name](#input\_cluster\_name) | Name of EKS cluster | `string` | n/a | yes |
| <a name="input_namespace"></a> [namespace](#input\_namespace) | Namespace of Vault release | `string` | n/a | yes |
| <a name="input_vault_address"></a> [vault\_address](#input\_vault\_address) | Vault http(s) address | `string` | n/a | yes |
| <a name="input_vault_sa"></a> [vault\_sa](#input\_vault\_sa) | Vault service account name | `string` | n/a | yes |
| <a name="input_vault_token_secret_id"></a> [vault\_token\_secret\_id](#input\_vault\_token\_secret\_id) | Id vault root token secret in AWS Secret Manager | `string` | n/a | yes |

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_backend_path"></a> [backend\_path](#output\_backend\_path) | Path of K8s Auth backend |
<!-- END_TF_DOCS -->
