module "aws_rds" {
  source = "git::https://github.com/codepusher-platform/codepusher-blueprints-aws.git//terraform/rds/module?ref={{ .moduleVersion }}"

  db_name                       = "{{ .name }}"
  service_role                  = "{{ .serviceRole }}"
  max_capacity                  = "{{ .maxCapacity }}"
  min_capacity                  = "{{ .minCapacity }}"
  instance_type                 = "{{ .instanceType }}"
  engine                        = "{{ .engine }}"
  engine_version                = "{{ .engineVersion }}"
  cluster_family                = "{{ .clusterFamily }}"
  cluster_size                  = "{{ .clusterSize }}"
  vpc_id                        = "{{ .vpcId }}"
  subnet_ids                    = "{{ .vpcSubnetIds }}"
  vpc_default_security_group_id = "{{ .vpcDefaultSecurityGroupId }}"
  owner                         = "{{ .owner }}"
}
