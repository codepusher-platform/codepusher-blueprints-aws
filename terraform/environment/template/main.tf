module "aws_environment" {
  source  = "git::https://github.com/codepusher-platform/codepusher-blueprints-aws.git//terraform/environment/module?ref=v0.1.0"

  environment_name = "{{ .environment_name }}"
  vpc_cidr         = "{{ .vpc_cidr }}"
  owner            = "{{ .owner }}"
}
