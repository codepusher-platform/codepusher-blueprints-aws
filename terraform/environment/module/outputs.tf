output "vpc_name" {
  value       = module.vpc.name
  description = "The name of the VPC"
}

output "vpc_arn" {
  description = "The ARN of the VPC"
  value       = module.vpc.vpc_arn
}

output "vpc_id" {
  description = "The ID of the VPC"
  value       = module.vpc.vpc_id
}

output "private_subnets" {
  description = "List of IDs of private subnets"
  value       = module.vpc.private_subnets
}

output "public_subnets" {
  description = "List of IDs of public subnets"
  value       = module.vpc.public_subnets
}

output "default_security_group_id" {
  description = "The Default Security Group Id"
  value       = module.vpc.default_security_group_id
}
