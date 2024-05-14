provider "aws" {
  region = "{{ .region }}"
}

terraform {
  backend "s3" {
    bucket         = "{{ .account_state_bucket }}"
    key            = "aws/environment/{{ .environment_name }}/terraform.tfstate"
    region         = "{{ .region }}"
    encrypt        = true
    dynamodb_table = "{{ .account_state_dynamodb_table }}"
  }
}
