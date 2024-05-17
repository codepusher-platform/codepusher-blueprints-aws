module "aws_environment" {
  source  = "git::https://github.com/codepusher-platform/codepusher-blueprints-aws.git//terraform/environment/module?ref={{ .module_version }}"

  environment_name = "{{ .environment_name }}"
  vpc_cidr         = "{{ .vpc_cidr }}"
  owner            = "{{ .owner }}"
}
