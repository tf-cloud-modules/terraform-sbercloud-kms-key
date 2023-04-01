# Sbercloud KMS Key Terraform module

## Provider configuration
```hcl
provider "sbercloud" {
  auth_url = "https://iam.ru-moscow-1.hc.sbercloud.ru/v3"
  region   = "ru-moscow-1"
}
```

## Usage
```hcl
module "kms_key" {
    source  = "tf-cloud-modules/kms-key/sbercloud"

    key_alias = "kms-test"
}
```

<!-- BEGIN_TF_DOCS -->
## Requirements

| Name | Version |
|------|---------|
| <a name="requirement_terraform"></a> [terraform](#requirement\_terraform) | >= 0.13.1 |
| <a name="requirement_sbercloud"></a> [sbercloud](#requirement\_sbercloud) | >= 1.9.0, < 2.0.0 |

## Providers

| Name | Version |
|------|---------|
| <a name="provider_sbercloud"></a> [sbercloud](#provider\_sbercloud) | 1.10.0 |

## Modules

No modules.

## Resources

| Name | Type |
|------|------|
| [sbercloud_kms_key.this](https://registry.terraform.io/providers/sbercloud-terraform/sbercloud/latest/docs/resources/kms_key) | resource |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_create"></a> [create](#input\_create) | Controls if resources should be created. | `bool` | `true` | no |
| <a name="input_enterprise_project_id"></a> [enterprise\_project\_id](#input\_enterprise\_project\_id) | The enterprise project id of the kms key. | `string` | `null` | no |
| <a name="input_is_enabled"></a> [is\_enabled](#input\_is\_enabled) | Specifies whether the key is enabled. Defaults to true. Changing this updates the state of existing key. | `bool` | `null` | no |
| <a name="input_key_alias"></a> [key\_alias](#input\_key\_alias) | The alias in which to create the key. | `string` | n/a | yes |
| <a name="input_key_description"></a> [key\_description](#input\_key\_description) | The description of the key as viewed in Sber console. | `string` | `null` | no |
| <a name="input_pending_days"></a> [pending\_days](#input\_pending\_days) | Duration in days after which the key is deleted after destruction of the resource, must be between 7 and 1096 days. | `string` | `null` | no |
| <a name="input_region"></a> [region](#input\_region) | The region in which to create the KMS key resource. | `string` | `null` | no |
| <a name="input_tags"></a> [tags](#input\_tags) | Specifies the key/value pairs to associate with the kms key. | `map(string)` | `null` | no |

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_domain_id"></a> [domain\_id](#output\_domain\_id) | ID of a user domain for the key. |
| <a name="output_id"></a> [id](#output\_id) | Specifies a resource ID in UUID format. |
| <a name="output_key_id"></a> [key\_id](#output\_key\_id) | The globally unique identifier for the key. |
<!-- END_TF_DOCS -->