output "id" {
  description = "Specifies a resource ID in UUID format."
  value       = try(sbercloud_kms_key.this[0].id, "")
}

output "key_id" {
  description = "The globally unique identifier for the key."
  value       = try(sbercloud_kms_key.this[0].key_id, "")
}

output "domain_id" {
  description = "ID of a user domain for the key."
  value       = try(sbercloud_kms_key.this[0].domain_id, "")
}