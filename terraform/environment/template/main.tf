module "aws_environment" {
  source  = "git::https://github.com/codepusher-platform/codepusher-blueprints-aws.git//terraform/environment/module?ref={{ .moduleVersion }}"

  environment_name = "{{ .name }}"
  vpc_cidr         = "{{ .vpcCidr }}"
  owner            = "{{ .owner }}"
}
