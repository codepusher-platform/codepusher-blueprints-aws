variable "cluster_name" {
  type        = string
  description = "Name of the EKS cluster"
}

variable "instance_type" {
  type        = string
  description = "Instance type for the node group (e.g., t3.medium)"
}

variable "instance_class" {
  type        = string
  description = "Instance class (OnDemand or Spot)"
  default     = "OnDemand"
}

variable "min_nodes" {
  type        = number
  description = "Minimum number of nodes in the node group"
  default     = 1
}

variable "desired_nodes" {
  type        = number
  description = "Desired number of nodes in the node group"
  default     = 1
}

variable "max_nodes" {
  type        = number
  description = "Maximum number of nodes in the node group"
  default     = 3
}

variable "ami_type" {
  type = string
  description = "AMI Type"
  default = "BOTTLEROCKET_x86_64"
}

variable "disk_capacity" {
  type        = number
  description = "Disk capacity in GB for the nodes"
  default     = 20 
}

variable "cluster_version" {
  type = string
  description = "EKS cluster version"
  default = "1.29"
}

variable "cluster_public_access" {
  type = bool
  description = "Enable public access endpoint to the EKS cluster"
  default = true
}

variable "vpc_id" {
  type = string
  description = "ID of the VPC"
}

variable "vpc_subnet_ids" {
  type = list(string)
  description = "List of subnet IDs"
}

variable "tags" {
  description = "A map of tags to add to all resources"
  type        = map(string)
  default     = {}
}

variable "default_instance_types" {
  description = "Node group default instance types"
  type        = list(string)
  default     = ["m6i.large", "m5.large", "m5n.large", "m5zn.large"]
}

variable "environment" {
  description = "Environment name"
  type        = string
}

variable "owner" {
  description = "The owner name"
}