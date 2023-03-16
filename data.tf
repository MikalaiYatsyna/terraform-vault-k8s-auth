data "aws_secretsmanager_secret_version" "root_token" {
  secret_id = var.vault_token_secret_id
}

data "aws_eks_cluster" "eks_cluster" {
  name = var.cluster_name
}

data "aws_eks_cluster_auth" "eks_cluster_auth" {
  name = var.cluster_name
}

data "kubernetes_service_account" "vault_sa" {
  metadata {
    name = var.vault_sa
    namespace = var.namespace
  }
}

data "kubernetes_secret_v1" "vault_sa_token" {
  metadata {
    name = data.kubernetes_service_account.vault_sa.secret[0].name
    namespace = var.namespace
  }
}
