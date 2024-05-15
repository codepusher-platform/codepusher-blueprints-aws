output "aws_eks_cluster_name" {
  value       = aws.eks.Cluster.eks_cluster.id
  description = "EKS Cluster Name"
}

output "cluster_endpoint" {
  value       = aws.eks.Cluster.eks_cluster.status.endpoint
  description = "EKS Cluster API Endpoint"
}

output "aws_eks_cluster_arn" {
  value       = aws.eks.Cluster.eks_cluster.arn
  description = "EKS Cluster ARN"
} 
