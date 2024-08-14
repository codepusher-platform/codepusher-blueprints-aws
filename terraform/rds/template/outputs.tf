output "aws_rds_endpoint" {
  description = "The endpoint for the primary instance of the RDS cluster."
  value       = module.aws_rds.cluster_endpoint
}

output "aws_rds_reader_endpoint" {
  description = "The reader endpoint for the RDS cluster."
  value       = module.aws_rds.cluster_reader_endpoint
}

output "aws_rds_arn" {
  description = "The ARN of the RDS cluster."
  value       = module.aws_rds.cluster_arn
}

output "aws_rds_id" {
  description = "The ID of the RDS cluster."
  value       = module.aws_rds.cluster_id
}
