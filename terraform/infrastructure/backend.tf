terraform {
  required_version = ">=1.13.0"
  
  backend "s3" {
    # These values will be provided via backend config file or CLI
    # bucket         = "terraform-multi-env-tfstate-ACCOUNT_ID"
    # key            = "infrastructure/terraform.tfstate"
    # region         = "us-east-1"
    # dynamodb_table = "terraform-multi-env-tfstate-locks"
    # encrypt        = true
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