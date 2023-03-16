provider "aws" {}

provider "vault" {
  address = var.vault_address
  token   = jsondecode(data.aws_secretsmanager_secret_version.root_token.secret_string)["token"]
}

provider "kubernetes" {
  host                   = data.aws_eks_cluster.eks_cluster.endpoint
  cluster_ca_certificate = base64decode(data.aws_eks_cluster.eks_cluster.certificate_authority[0].data)
  token                  = data.aws_eks_cluster_auth.eks_cluster_auth.token
}
