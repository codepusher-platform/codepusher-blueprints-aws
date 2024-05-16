module "codepusher_eks" {
  source  = "terraform-aws-modules/eks/aws"
  version = "~> 20.0"

  cluster_name    = var.cluster_name
  cluster_version = var.cluster_version

  cluster_endpoint_public_access = var.cluster_public_access

  cluster_addons = {
    coredns = {
      most_recent = true
      timeouts = {
        create = "25m"
        delete = "10m"
      }
    }
    kube-proxy = {
      most_recent = true
    }
    vpc-cni = {
      most_recent    = true
      before_compute = true
      configuration_values = jsonencode({
        env = {
          # Reference docs https://docs.aws.amazon.com/eks/latest/userguide/cni-increase-ip-addresses.html
          ENABLE_PREFIX_DELEGATION = "true"
          WARM_PREFIX_TARGET       = "1"
        }
      })
    }
    amazon-ebs-csi-driver = {
      most_recent = true
    }
  }

  vpc_id     = var.vpc_id
  subnet_ids = var.vpc_subnet_ids

  eks_managed_node_group_defaults = {
    instance_types = var.default_instance_types

  }

  eks_managed_node_groups = {
    initial = {
      instance_types = [
        var.instance_type,
      ]
      capacity_type = var.instance_class
      ami_type      = var.ami_type
      disk_size     = var.disk_capacity

      min_size     = var.min_nodes
      desired_size = var.desired_nodes
      max_size     = var.max_nodes
    }
  }

  enable_cluster_creator_admin_permissions = true


  tags = merge(var.tags, {
    resource-type = "eks"
    managedby     = "codepusher-platform"
    environment   = var.environment
    owner         = var.owner
  })
}
