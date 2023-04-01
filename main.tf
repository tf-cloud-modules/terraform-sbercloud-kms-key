resource "sbercloud_kms_key" "this" {
  count = var.create ? 1 : 0

  region                = var.region
  key_alias             = var.key_alias
  key_description       = var.key_description
  pending_days          = var.pending_days
  is_enabled            = var.is_enabled
  enterprise_project_id = var.enterprise_project_id
  tags                  = var.tags
}