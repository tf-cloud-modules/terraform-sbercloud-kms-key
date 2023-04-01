variable "create" {
  description = "Controls if resources should be created."
  type        = bool
  default     = true
}

variable "region" {
  description = "The region in which to create the KMS key resource. "
  type        = string
  default     = null
}

variable "key_alias" {
  description = "The alias in which to create the key."
  type        = string
}

variable "key_description" {
  description = "The description of the key as viewed in Sber console."
  type        = string
  default     = null
}

variable "pending_days" {
  description = "Duration in days after which the key is deleted after destruction of the resource, must be between 7 and 1096 days."
  type        = string
  default     = null
}

variable "is_enabled" {
  description = "Specifies whether the key is enabled. Defaults to true. Changing this updates the state of existing key."
  type        = bool
  default     = null
}

variable "enterprise_project_id" {
  description = "The enterprise project id of the kms key."
  type        = string
  default     = null
}

variable "tags" {
  description = "Specifies the key/value pairs to associate with the kms key."
  type        = map(string)
  default     = null
}                 