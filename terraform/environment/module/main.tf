locals {
  azs = slice(data.aws_availability_zones.available.names, 0, var.azs_qty)
}

module "vpc" {
  source  = "terraform-aws-modules/vpc/aws"
  version = "~> 5.0"

  name = var.environment_name
  cidr = var.vpc_cidr

  azs             = local.azs
  public_subnets  = [for k, v in local.azs : cidrsubnet(var.vpc_cidr, 8, k)]
  private_subnets = [for k, v in local.azs : cidrsubnet(var.vpc_cidr, 8, k + 10)]

  enable_nat_gateway = var.enable_nat_gateway
  single_nat_gateway = var.single_nat_gateway

  public_subnet_tags = {
    "kubernetes.io/role/elb" = 1
  }

  private_subnet_tags = {
    "kubernetes.io/role/internal-elb" = 1
  }

  tags = merge(var.tags, {
    resource-type = "vpc"
    managedby     = "codepusher"
    environment   = var.environment_name
    owner         = var.owner
  })
}

resource "aws_s3_bucket" "environment_state_bucket" {
  bucket = "{{ .environment_name }}-state-bucket"

  lifecycle {
    prevent_destroy = true
  }
  tags = merge(var.tags, {
    resource-type = "s3-bucket"
    managedby     = "codepusher"
    environment   = var.environment_name
    owner         = var.owner
  })
}

resource "aws_s3_bucket_ownership_controls" "environment_state_bucket_ownership" {
  bucket = aws_s3_bucket.environment_state_bucket.id
  rule {
    object_ownership = "BucketOwnerPreferred"
  }
}

resource "aws_s3_bucket_acl" "environment_state_bucket_acl" {
  depends_on = [aws_s3_bucket_ownership_controls.environment_state_bucket_ownership]

  bucket = aws_s3_bucket.environment_state_bucket.id
  acl    = "private"
}

resource "aws_dynamodb_table" "environment_state_bucket_lock_table" {
  name         = "environment-state-bucket-lock-table"
  billing_mode = "PAY_PER_REQUEST"
  hash_key     = "LockID"
  attribute {
    name = "LockID"
    type = "S"
  }
}
