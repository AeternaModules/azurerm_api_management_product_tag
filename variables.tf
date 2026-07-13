variable "api_management_product_tags" {
  description = <<EOT
Map of api_management_product_tags, attributes below
Required:
    - api_management_name
    - api_management_product_id
    - name
    - resource_group_name
EOT

  type = map(object({
    api_management_name       = string
    api_management_product_id = string
    name                      = string
    resource_group_name       = string
  }))
  validation {
    condition = alltrue([
      for k, v in var.api_management_product_tags : (
        length(v.resource_group_name) <= 90
      )
    ])
    error_message = "[from resourcegroups.ValidateName: invalid when len(value) > 90]"
  }
  validation {
    condition = alltrue([
      for k, v in var.api_management_product_tags : (
        !endswith(v.resource_group_name, ".")
      )
    ])
    error_message = "[from resourcegroups.ValidateName: must not end with \".\"]"
  }
  validation {
    condition = alltrue([
      for k, v in var.api_management_product_tags : (
        length(v.resource_group_name) != 0
      )
    ])
    error_message = "[from resourcegroups.ValidateName: invalid when len(value) == 0]"
  }
  # Note: 4 additional provider-side validators are enforced at apply time but not mirrored as validation{} blocks here (bespoke or non-mechanically-translatable).
}

