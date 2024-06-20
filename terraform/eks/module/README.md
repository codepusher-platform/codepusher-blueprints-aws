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
| <a name="module_codepusher_eks"></a> [codepusher\_eks](#module\_codepusher\_eks) | terraform-aws-modules/eks/aws | ~> 20.0 |
| <a name="module_ebs_csi_driver_irsa"></a> [ebs\_csi\_driver\_irsa](#module\_ebs\_csi\_driver\_irsa) | terraform-aws-modules/iam/aws//modules/iam-role-for-service-accounts-eks | ~> 5.20 |

## Resources

No resources.

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_ami_type"></a> [ami\_type](#input\_ami\_type) | AMI Type | `string` | `"BOTTLEROCKET_x86_64"` | no |
| <a name="input_cluster_name"></a> [cluster\_name](#input\_cluster\_name) | Name of the EKS cluster | `string` | n/a | yes |
| <a name="input_cluster_public_access"></a> [cluster\_public\_access](#input\_cluster\_public\_access) | Enable public access endpoint to the EKS cluster | `bool` | `true` | no |
| <a name="input_cluster_version"></a> [cluster\_version](#input\_cluster\_version) | EKS cluster version | `string` | `"1.29"` | no |
| <a name="input_default_instance_types"></a> [default\_instance\_types](#input\_default\_instance\_types) | Node group default instance types | `list(string)` | <pre>[<br>  "m6i.large",<br>  "m5.large",<br>  "m5n.large",<br>  "m5zn.large"<br>]</pre> | no |
| <a name="input_desired_nodes"></a> [desired\_nodes](#input\_desired\_nodes) | Desired number of nodes in the node group | `number` | `1` | no |
| <a name="input_disk_capacity"></a> [disk\_capacity](#input\_disk\_capacity) | Disk capacity in GB for the nodes | `number` | `20` | no |
| <a name="input_environment_name"></a> [environment\_name](#input\_environment\_name) | Environment name | `string` | n/a | yes |
| <a name="input_instance_class"></a> [instance\_class](#input\_instance\_class) | Instance class (OnDemand or Spot) | `string` | `"OnDemand"` | no |
| <a name="input_instance_types"></a> [instance\_types](#input\_instance\_types) | Instance type for the node group (e.g., m5.xlarge) | `list(string)` | n/a | yes |
| <a name="input_max_nodes"></a> [max\_nodes](#input\_max\_nodes) | Maximum number of nodes in the node group | `number` | `3` | no |
| <a name="input_min_nodes"></a> [min\_nodes](#input\_min\_nodes) | Minimum number of nodes in the node group | `number` | `1` | no |
| <a name="input_owner"></a> [owner](#input\_owner) | The owner name | `any` | n/a | yes |
| <a name="input_tags"></a> [tags](#input\_tags) | A map of tags to add to all resources | `map(string)` | `{}` | no |
| <a name="input_vpc_id"></a> [vpc\_id](#input\_vpc\_id) | ID of the VPC | `string` | n/a | yes |
| <a name="input_vpc_private_subnet_ids"></a> [vpc\_private\_subnet\_ids](#input\_vpc\_private\_subnet\_ids) | List of subnet IDs | `list(string)` | n/a | yes |

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_cluster_arn"></a> [cluster\_arn](#output\_cluster\_arn) | EKS Cluster ARN |
| <a name="output_cluster_endpoint"></a> [cluster\_endpoint](#output\_cluster\_endpoint) | EKS Cluster API Endpoint |
| <a name="output_cluster_name"></a> [cluster\_name](#output\_cluster\_name) | EKS Cluster Name |
<!-- END_TF_DOCS -->