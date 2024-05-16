variable "environment_name" {
  description = "The environment name"
  default     = ""
}

variable "vpc_cidr" {
  description = "The VPC CIDR block"
  default     = "10.0.0.0/16"
}

variable "azs_qty" {
  description = "The number of availability zones"
  default     = "3"
}

variable "tags" {
  description = "A map of tags to add to all resources"
  type        = map(string)
  default     = {}
}

variable "owner" {
  description = "The owner name"
}

variable "enable_nat_gateway" {
  description = "Enable nat gateway"
  default     = "true"
}

variable "single_nat_gateway" {
  description = "Enable single nat gateway"
  default     = "true"
}
