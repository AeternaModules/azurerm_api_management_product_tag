output "api_management_product_tags" {
  description = "All api_management_product_tag resources"
  value       = azurerm_api_management_product_tag.api_management_product_tags
}
output "api_management_product_tags_api_management_name" {
  description = "List of api_management_name values across all api_management_product_tags"
  value       = [for k, v in azurerm_api_management_product_tag.api_management_product_tags : v.api_management_name]
}
output "api_management_product_tags_api_management_product_id" {
  description = "List of api_management_product_id values across all api_management_product_tags"
  value       = [for k, v in azurerm_api_management_product_tag.api_management_product_tags : v.api_management_product_id]
}
output "api_management_product_tags_name" {
  description = "List of name values across all api_management_product_tags"
  value       = [for k, v in azurerm_api_management_product_tag.api_management_product_tags : v.name]
}
output "api_management_product_tags_resource_group_name" {
  description = "List of resource_group_name values across all api_management_product_tags"
  value       = [for k, v in azurerm_api_management_product_tag.api_management_product_tags : v.resource_group_name]
}

