terraform {
  required_version = ">= 1.0"

  cloud {
    organization = "weigand-hcp"
    hostname     = "app.terraform.io" 

    workspaces {
      name = "eks-demo"
    }
  }

  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 5.0"
    }
    kubernetes = {
      source  = "hashicorp/kubernetes"
      version = ">= 2.10"
    }
  }
}