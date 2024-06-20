module "aws_eks" {
  source = "git::https://github.com/codepusher-platform/codepusher-blueprints-aws.git//terraform/eks/module?ref={{ .moduleVersion }}"

  cluster_name           = "{{ .clusterName }}"
  instance_types         = {{ .instanceTypes }}
  instance_class         = "{{ .instanceClass }}"
  min_nodes              = {{ .minNodes }}
  max_nodes              = {{ .maxNodes }}
  desired_nodes          = {{ .desiredNodes }}
  disk_capacity          = {{ .diskCapacity }}
  owner                  = "{{ .owner }}"
  vpc_id                 = "{{ .vpcId }}"
  vpc_private_subnet_ids = {{ .vpcPrivateSubnetIds }}
  environment_name       = "{{ .environmentName }}"
}
