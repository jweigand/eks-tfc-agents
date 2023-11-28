terraform {
  required_version = ">= 1.0"

  cloud {
    organization = "weigand-hcp"
    hostname     = "app.terraform.io"

    workspaces {
      name = "eks-tfc-agent-irsa"
    }
  }

/*
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 5.0"
    }
  }
  */
}

/*
provider "aws" {
  region = "us-east-1"
}
*/