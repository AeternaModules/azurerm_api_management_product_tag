output "api_management_product_tags_id" {
  description = "Map of id values across all api_management_product_tags, keyed the same as var.api_management_product_tags"
  value       = { for k, v in azurerm_api_management_product_tag.api_management_product_tags : k => v.id if v.id != null && length(v.id) > 0 }
}
output "api_management_product_tags_api_management_name" {
  description = "Map of api_management_name values across all api_management_product_tags, keyed the same as var.api_management_product_tags"
  value       = { for k, v in azurerm_api_management_product_tag.api_management_product_tags : k => v.api_management_name if v.api_management_name != null && length(v.api_management_name) > 0 }
}
output "api_management_product_tags_api_management_product_id" {
  description = "Map of api_management_product_id values across all api_management_product_tags, keyed the same as var.api_management_product_tags"
  value       = { for k, v in azurerm_api_management_product_tag.api_management_product_tags : k => v.api_management_product_id if v.api_management_product_id != null && length(v.api_management_product_id) > 0 }
}
output "api_management_product_tags_name" {
  description = "Map of name values across all api_management_product_tags, keyed the same as var.api_management_product_tags"
  value       = { for k, v in azurerm_api_management_product_tag.api_management_product_tags : k => v.name if v.name != null && length(v.name) > 0 }
}
output "api_management_product_tags_resource_group_name" {
  description = "Map of resource_group_name values across all api_management_product_tags, keyed the same as var.api_management_product_tags"
  value       = { for k, v in azurerm_api_management_product_tag.api_management_product_tags : k => v.resource_group_name if v.resource_group_name != null && length(v.resource_group_name) > 0 }
}

