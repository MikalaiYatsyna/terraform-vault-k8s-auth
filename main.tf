resource "vault_auth_backend" "kubernetes" {
  type = "kubernetes"
  path = "kubernetes"
}

resource "vault_kubernetes_auth_backend_config" "kubernetes" {
  backend                       = vault_auth_backend.kubernetes.path
  kubernetes_host               = data.aws_eks_cluster.eks_cluster.endpoint
  kubernetes_ca_cert            = base64decode(data.aws_eks_cluster.eks_cluster.certificate_authority[0].data)
  token_reviewer_jwt            = data.kubernetes_secret_v1.vault_sa_token.data.token
}
