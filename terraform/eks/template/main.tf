module "aws_eks" {
  source = "git::https://github.com/codepusher-platform/codepusher-blueprints-aws.git//terraform/eks/module?ref=v0.1.0"

  cluster_name   = "{{ .cluster_name }}"
  instance_type  = "{{ .vinstance_type }}"
  instance_class = "{{ .owner }}"
  min_nodes      = "{{ .min_nodes }}"
  max_nodes      = "{{ .max_nodes }}"
  desired_nodes  = "{{ .desired_nodes }}"
  disk_capacity  = "{{ .disk_capacity }}"
  vpc_id         = "{{ .vpc_id }}"
  vpc_subnet_ids = "{{ .subnet_ids }}"
  owner          = "{{ .owner}}"
  environment    = "{{ .environment }}"
}
