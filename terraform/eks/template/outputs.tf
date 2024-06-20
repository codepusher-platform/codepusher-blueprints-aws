output "aws_eks_cluster_name" {
  value       = module.aws_eks.cluster_name
  description = "EKS Cluster Name"
}

output "aws_eks_cluster_endpoint" {
  value       = module.aws_eks.cluster_endpoint
  description = "EKS Cluster API Endpoint"
}

output "aws_eks_cluster_arn" {
  value       = module.aws_eks.cluster_arn
  description = "EKS Cluster ARN"
} 
