provider "aws" {
  region = "{{ .region }}"
  assume_role {
    role_arn = "{{ .environmentAssumeRoleArn }}"
  }
}

terraform {
  backend "s3" {
    bucket         = "{{ .accountStateBucket }}"
    key            = "aws/environment/{{ .name }}/terraform.tfstate"
    region         = "{{ .region }}"
    encrypt        = true
    dynamodb_table = "{{ .accountStateDynamoDBTable }}"
  }
}
