output "cluster_name" {
  value       = module.codepusher_eks.cluster_name
  description = "EKS Cluster Name"
}

output "cluster_endpoint" {
  value       = module.codepusher_eks.cluster_endpoint
  description = "EKS Cluster API Endpoint"
}

output "cluster_arn" {
  value       = module.codepusher_eks.cluster_arn
  description = "EKS Cluster ARN"
}
