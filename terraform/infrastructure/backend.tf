terraform {
  required_version = ">=1.13.0"
  
  backend "s3" {
    bucket         = "soakoto-terraform-multi-env-tfstate-782545587425"
    key            = "infrastructure/terraform.tfstate"
    region         = "us-east-1"
    use_lockfile = "soakoto-terraform-multi-env-tfstate-locks"
    encrypt        = true
  }

  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 5.0"
    }
  }
}

provider "aws" {
  region = var.aws_region
}