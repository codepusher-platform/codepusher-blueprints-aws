provider "aws" {
  region = "{{ .region }}"
  assume_role {
    role_arn = "{{ .roleArn }}"
  }
}

terraform {
  backend "s3" {
    bucket         = "{{ .stateBucket }}"
    key            = "aws/environment/{{ .environment }}/rds/{{ .name }}/terraform.tfstate"
    region         = "{{ .region }}"
    encrypt        = true
    dynamodb_table = "{{ .stateTable }}"
  }
}
