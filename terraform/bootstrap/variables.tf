variable "aws_region" {
  description = "AWS region"
  type        = string
  default     = "us-east-1"
}

variable "project_name" {
  description = "Project name for resource naming"
  type        = string
  default     = "soakoto-terraform-multi-env"
}

variable "environments" {
  description = "List of environments"
  type        = list(string)
  default     = ["dev", "stage", "prod"]
}
