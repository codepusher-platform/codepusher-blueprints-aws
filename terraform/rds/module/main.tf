module "rds_cluster" {
  source  = "cloudposse/rds-cluster/aws"
  version = "1.9.0"

  instance_type                       = var.instance_type
  engine                              = var.engine
  cluster_family                      = var.cluster_family
  engine_version                      = var.engine_version
  iam_database_authentication_enabled = var.iam_database_authentication_enabled
  iam_roles                           = [var.service_role]
  cluster_size                        = var.cluster_size
  db_name                             = var.db_name
  vpc_id                              = var.vpc_id
  subnets                             = var.subnet_ids
  security_groups                     = [var.vpc_default_security_group_id]
  deletion_protection                 = var.deletion_protection
  serverlessv2_scaling_configuration = {
    max_capacity = var.max_capacity
    min_capacity = var.min_capacity
  }
}
