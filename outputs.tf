output "api_management_product_tags_id" {
  description = "Map of id values across all api_management_product_tags, keyed the same as var.api_management_product_tags"
  value       = { for k, v in azurerm_api_management_product_tag.api_management_product_tags : k => v.id }
}
output "api_management_product_tags_api_management_name" {
  description = "Map of api_management_name values across all api_management_product_tags, keyed the same as var.api_management_product_tags"
  value       = { for k, v in azurerm_api_management_product_tag.api_management_product_tags : k => v.api_management_name }
}
output "api_management_product_tags_api_management_product_id" {
  description = "Map of api_management_product_id values across all api_management_product_tags, keyed the same as var.api_management_product_tags"
  value       = { for k, v in azurerm_api_management_product_tag.api_management_product_tags : k => v.api_management_product_id }
}
output "api_management_product_tags_name" {
  description = "Map of name values across all api_management_product_tags, keyed the same as var.api_management_product_tags"
  value       = { for k, v in azurerm_api_management_product_tag.api_management_product_tags : k => v.name }
}
output "api_management_product_tags_resource_group_name" {
  description = "Map of resource_group_name values across all api_management_product_tags, keyed the same as var.api_management_product_tags"
  value       = { for k, v in azurerm_api_management_product_tag.api_management_product_tags : k => v.resource_group_name }
}

