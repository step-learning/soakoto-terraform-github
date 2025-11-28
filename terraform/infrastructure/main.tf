data "aws_caller_identity" "current" {}

locals {
  common_tags = merge(
    {
      Environment = var.environment
      Project     = var.project_name
      ManagedBy   = "Terraform"
      Workspace   = terraform.workspace
    },
    var.tags
  )
}