<!-- BEGIN_TF_DOCS -->
## Requirements

| Name | Version |
|------|---------|
| <a name="requirement_terraform"></a> [terraform](#requirement\_terraform) | >= 1.0.0 |
| <a name="requirement_aws"></a> [aws](#requirement\_aws) | >= 2.0.0 |

## Providers

No providers.

## Modules

| Name | Source | Version |
|------|--------|---------|
| <a name="module_rds_cluster"></a> [rds\_cluster](#module\_rds\_cluster) | cloudposse/rds-cluster/aws | 1.9.0 |

## Resources

No resources.

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_cluster_family"></a> [cluster\_family](#input\_cluster\_family) | The family of the database engine. | `string` | n/a | yes |
| <a name="input_cluster_size"></a> [cluster\_size](#input\_cluster\_size) | Number of instances to create in the RDS cluster. | `number` | `1` | no |
| <a name="input_db_name"></a> [db\_name](#input\_db\_name) | The name of the database to create when the RDS cluster is created. | `string` | n/a | yes |
| <a name="input_deletion_protection"></a> [deletion\_protection](#input\_deletion\_protection) | Set to true to enable deletion protection on the RDS instance. | `bool` | `true` | no |
| <a name="input_engine"></a> [engine](#input\_engine) | The name of the database engine to be used for this cluster. | `string` | n/a | yes |
| <a name="input_engine_version"></a> [engine\_version](#input\_engine\_version) | The version number of the database engine to use. | `string` | n/a | yes |
| <a name="input_iam_database_authentication_enabled"></a> [iam\_database\_authentication\_enabled](#input\_iam\_database\_authentication\_enabled) | Set to true to enable IAM database authentication. | `bool` | `true` | no |
| <a name="input_instance_type"></a> [instance\_type](#input\_instance\_type) | The type of instance to use for the RDS cluster. | `string` | n/a | yes |
| <a name="input_max_capacity"></a> [max\_capacity](#input\_max\_capacity) | The maximum capacity for the ServerlessV2 scaling configuration. | `number` | `1` | no |
| <a name="input_min_capacity"></a> [min\_capacity](#input\_min\_capacity) | The minimum capacity for the ServerlessV2 scaling configuration. | `number` | `0.5` | no |
| <a name="input_owner"></a> [owner](#input\_owner) | The owner name | `any` | n/a | yes |
| <a name="input_service_role"></a> [service\_role](#input\_service\_role) | Service role associated with the RDS cluster. | `string` | n/a | yes |
| <a name="input_subnet_ids"></a> [subnet\_ids](#input\_subnet\_ids) | A list of subnet IDs for the RDS cluster. | `list(string)` | n/a | yes |
| <a name="input_tags"></a> [tags](#input\_tags) | A map of tags to add to all resources | `map(string)` | `{}` | no |
| <a name="input_vpc_default_security_group_id"></a> [vpc\_default\_security\_group\_id](#input\_vpc\_default\_security\_group\_id) | The ID of the default security group for the VPC. | `string` | n/a | yes |
| <a name="input_vpc_id"></a> [vpc\_id](#input\_vpc\_id) | The ID of the VPC in which to create the RDS cluster. | `string` | n/a | yes |

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_rds_cluster_arn"></a> [rds\_cluster\_arn](#output\_rds\_cluster\_arn) | The ARN of the RDS cluster. |
| <a name="output_rds_cluster_endpoint"></a> [rds\_cluster\_endpoint](#output\_rds\_cluster\_endpoint) | The endpoint for the primary instance of the RDS cluster. |
| <a name="output_rds_cluster_id"></a> [rds\_cluster\_id](#output\_rds\_cluster\_id) | The ID of the RDS cluster. |
| <a name="output_rds_cluster_reader_endpoint"></a> [rds\_cluster\_reader\_endpoint](#output\_rds\_cluster\_reader\_endpoint) | The reader endpoint for the RDS cluster. |
<!-- END_TF_DOCS -->