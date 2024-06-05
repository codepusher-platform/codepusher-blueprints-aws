variable "iam_database_authentication_enabled" {
  description = "Set to true to enable IAM database authentication."
  type        = bool
  default     = true
}
variable "instance_type" {
  description = "The type of instance to use for the RDS cluster."
  type        = string
}

variable "engine" {
  description = "The name of the database engine to be used for this cluster."
  type        = string
}

variable "cluster_family" {
  description = "The family of the database engine."
  type        = string
}

variable "engine_version" {
  description = "The version number of the database engine to use."
  type        = string
}

variable "service_role" {
  description = "Service role associated with the RDS cluster."
  type        = string
}

variable "cluster_size" {
  description = "Number of instances to create in the RDS cluster."
  type        = number
  default     = 1
}

variable "db_name" {
  description = "The name of the database to create when the RDS cluster is created."
  type        = string
}

variable "vpc_id" {
  description = "The ID of the VPC in which to create the RDS cluster."
  type        = string
}

variable "subnet_ids" {
  description = "A list of subnet IDs for the RDS cluster."
  type        = list(string)
}

variable "vpc_default_security_group_id" {
  description = "The ID of the default security group for the VPC."
  type        = string
}

variable "deletion_protection" {
  description = "Set to true to enable deletion protection on the RDS instance."
  type        = bool
  default     = true
}

variable "max_capacity" {
  description = "The maximum capacity for the ServerlessV2 scaling configuration."
  type        = number
  default     = 1
}

variable "min_capacity" {
  description = "The minimum capacity for the ServerlessV2 scaling configuration."
  type        = number
  default     = 0.5
}
