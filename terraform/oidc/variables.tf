variable "aws_region" {
  description = "AWS region"
  type        = string
  default     = "us-east-1"
}

variable "github_org" {
  description = "GitHub organization or username"
  type        = string
  default     = "step-learning"
}

variable "github_repo" {
  description = "GitHub repository name"
  type        = string
  default     = "soakoto-terraform-github"
}

variable "project_name" {
  description = "Project name for resource naming"
  type        = string
  default     = "soakoto-terraform-multi-env"
}