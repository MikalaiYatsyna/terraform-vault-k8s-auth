terraform {
  required_version = "1.7.5"
  required_providers {
    aws = {
      version = "4.58.0"
      source  = "hashicorp/aws"
    }
    vault = {
      version = "3.14.0"
      source  = "hashicorp/vault"
    }
    kubernetes = {
      version = "2.18.1"
      source  = "hashicorp/kubernetes"
    }
  }
}