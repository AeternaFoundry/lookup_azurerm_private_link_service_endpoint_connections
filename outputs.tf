output "private_link_service_endpoint_connections_lookup_id" {
  description = "Map of id values across all private_link_service_endpoint_connections_lookup, keyed the same as var.private_link_service_endpoint_connections_lookup"
  value       = { for k, v in data.azurerm_private_link_service_endpoint_connections.private_link_service_endpoint_connections_lookup : k => v.id if v.id != null && length(v.id) > 0 }
}
output "private_link_service_endpoint_connections_lookup_location" {
  description = "Map of location values across all private_link_service_endpoint_connections_lookup, keyed the same as var.private_link_service_endpoint_connections_lookup"
  value       = { for k, v in data.azurerm_private_link_service_endpoint_connections.private_link_service_endpoint_connections_lookup : k => v.location if v.location != null && length(v.location) > 0 }
}
output "private_link_service_endpoint_connections_lookup_private_endpoint_connections" {
  description = "Map of private_endpoint_connections values across all private_link_service_endpoint_connections_lookup, keyed the same as var.private_link_service_endpoint_connections_lookup"
  value       = { for k, v in data.azurerm_private_link_service_endpoint_connections.private_link_service_endpoint_connections_lookup : k => v.private_endpoint_connections if v.private_endpoint_connections != null && length(v.private_endpoint_connections) > 0 }
}
output "private_link_service_endpoint_connections_lookup_resource_group_name" {
  description = "Map of resource_group_name values across all private_link_service_endpoint_connections_lookup, keyed the same as var.private_link_service_endpoint_connections_lookup"
  value       = { for k, v in data.azurerm_private_link_service_endpoint_connections.private_link_service_endpoint_connections_lookup : k => v.resource_group_name if v.resource_group_name != null && length(v.resource_group_name) > 0 }
}
output "private_link_service_endpoint_connections_lookup_service_id" {
  description = "Map of service_id values across all private_link_service_endpoint_connections_lookup, keyed the same as var.private_link_service_endpoint_connections_lookup"
  value       = { for k, v in data.azurerm_private_link_service_endpoint_connections.private_link_service_endpoint_connections_lookup : k => v.service_id if v.service_id != null && length(v.service_id) > 0 }
}
output "private_link_service_endpoint_connections_lookup_service_name" {
  description = "Map of service_name values across all private_link_service_endpoint_connections_lookup, keyed the same as var.private_link_service_endpoint_connections_lookup"
  value       = { for k, v in data.azurerm_private_link_service_endpoint_connections.private_link_service_endpoint_connections_lookup : k => v.service_name if v.service_name != null && length(v.service_name) > 0 }
}

