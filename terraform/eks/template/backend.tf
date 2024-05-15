provider "aws" {
  region = "{{ .region }}"
  assume_role {
    role_arn = "{{ .environment_assume_role_arn }}"
  }
}

terraform {
  backend "s3" {
    bucket         = "{{ .account_state_bucket }}"
    key            = "aws/environment/{{ .environment_name }}/eks/{{ .cluster_name }}/terraform.tfstate"
    region         = "{{ .region }}"
    encrypt        = true
    dynamodb_table = "{{ .account_state_dynamodb_table }}"
  }
}
