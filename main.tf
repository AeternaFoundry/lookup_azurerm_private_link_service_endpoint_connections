data "azurerm_private_link_service_endpoint_connections" "private_link_service_endpoint_connections_lookup" {
  for_each = var.private_link_service_endpoint_connections_lookup

  resource_group_name = each.value.resource_group_name
  service_id          = each.value.service_id
}

