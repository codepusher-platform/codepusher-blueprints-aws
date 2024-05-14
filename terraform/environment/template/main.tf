module "aws-environment" {
  source  = "github.com/codepusher-platform/terraform/environment/module?ref=v0.1.0"

  environment_name = "{{ .environment_name }}"
  vpc_cidr         = "{{ .vpc_cidr }}"
  owner            = "{{ .owner }}"
}
