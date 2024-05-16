output "vpc_name" {
  value       = module.aws-environment.vpc_name
  description = "The name of the VPC"
}

output "vpc_arn" {
  description = "The ARN of the VPC"
  value       = module.aws-environment.vpc_arn
}

output "vpc_id" {
  description = "The ID of the VPC"
  value       = module.aws-environment.vpc_id
}

output "private_subnets" {
  description = "List of IDs of private subnets"
  value       = module.aws-environment.private_subnets
}

output "public_subnets" {
  description = "List of IDs of public subnets"
  value       = module.aws-environment.public_subnets
}
