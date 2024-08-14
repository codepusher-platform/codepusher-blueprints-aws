output "cluster_endpoint" {
  description = "The endpoint for the primary instance of the RDS cluster."
  value       = module.rds_cluster.cluster_endpoint
}

output "cluster_reader_endpoint" {
  description = "The reader endpoint for the RDS cluster."
  value       = module.rds_cluster.cluster_reader_endpoint
}

output "cluster_arn" {
  description = "The ARN of the RDS cluster."
  value       = module.rds_cluster.cluster_arn
}

output "cluster_id" {
  description = "The ID of the RDS cluster."
  value       = module.rds_cluster.cluster_id
}
