output "data_bucket_id" {
  description = "ID of the data S3 bucket"
  value       = module.s3_bucket.s3_bucket_id
}

output "data_bucket_arn" {
  description = "ARN of the data S3 bucket"
  value       = module.s3_bucket.s3_bucket_arn
}

output "logs_bucket_id" {
  description = "ID of the logs S3 bucket"
  value       = aws_s3_bucket.logs.id
}

output "logs_bucket_arn" {
  description = "ARN of the logs S3 bucket"
  value       = aws_s3_bucket.logs.arn
}

output "environment" {
  description = "Current environment"
  value       = var.environment
}

output "workspace" {
  description = "Current Terraform workspace"
  value       = terraform.workspace
}