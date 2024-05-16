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
| <a name="module_eks"></a> [eks](#module\_eks) | terraform-aws-modules/eks/aws | ~> 20.0 |

## Resources

No resources.

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_cluster_name"></a> [cluster\_name](#input\_cluster\_name) | Name of the EKS cluster | `string` | n/a | yes |
| <a name="input_cluster_public_access"></a> [cluster\_public\_access](#input\_cluster\_public\_access) | Enable public access endpoint to the EKS cluster | `bool` | `true` | no |
| <a name="input_cluster_version"></a> [cluster\_version](#input\_cluster\_version) | EKS cluster version | `string` | `"1.29"` | no |
| <a name="input_desired_nodes"></a> [desired\_nodes](#input\_desired\_nodes) | Desired number of nodes in the node group | `number` | `1` | no |
| <a name="input_disk_capacity"></a> [disk\_capacity](#input\_disk\_capacity) | Disk capacity in GB for the nodes | `number` | `20` | no |
| <a name="input_instance_class"></a> [instance\_class](#input\_instance\_class) | Instance class (OnDemand or Spot) | `string` | `"OnDemand"` | no |
| <a name="input_instance_type"></a> [instance\_type](#input\_instance\_type) | Instance type for the node group (e.g., t3.medium) | `string` | n/a | yes |
| <a name="input_max_nodes"></a> [max\_nodes](#input\_max\_nodes) | Maximum number of nodes in the node group | `number` | `3` | no |
| <a name="input_min_nodes"></a> [min\_nodes](#input\_min\_nodes) | Minimum number of nodes in the node group | `number` | `1` | no |
| <a name="input_tags"></a> [tags](#input\_tags) | A map of tags to add to all resources | `map(string)` | `{}` | no |
| <a name="input_vpc_id"></a> [vpc\_id](#input\_vpc\_id) | ID of the VPC | `string` | n/a | yes |
| <a name="input_vpc_subnet_ids"></a> [vpc\_subnet\_ids](#input\_vpc\_subnet\_ids) | List of subnet IDs | `list(string)` | n/a | yes |

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_aws_eks_cluster_arn"></a> [aws\_eks\_cluster\_arn](#output\_aws\_eks\_cluster\_arn) | EKS Cluster ARN |
| <a name="output_aws_eks_cluster_name"></a> [aws\_eks\_cluster\_name](#output\_aws\_eks\_cluster\_name) | EKS Cluster Name |
| <a name="output_cluster_endpoint"></a> [cluster\_endpoint](#output\_cluster\_endpoint) | EKS Cluster API Endpoint |
<!-- END_TF_DOCS -->