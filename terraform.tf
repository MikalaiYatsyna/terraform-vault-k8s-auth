terraform {
  required_version = "1.10.3"
  required_providers {
    aws = {
      version = "5.82.2"
      source  = "hashicorp/aws"
    }
    vault = {
      version = "4.5.0"
      source  = "hashicorp/vault"
    }
    kubernetes = {
      version = "2.27.0"
      source  = "hashicorp/kubernetes"
    }
  }
}