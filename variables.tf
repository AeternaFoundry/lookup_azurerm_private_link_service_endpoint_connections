variable "private_link_service_endpoint_connections_lookup" {
  description = <<EOT
Map of private_link_service_endpoint_connections_lookup, attributes below
Required:
    - resource_group_name
    - service_id
EOT

  type = map(object({
    resource_group_name = string
    service_id          = string
  }))
  validation {
    condition = alltrue([
      for k, v in var.private_link_service_endpoint_connections_lookup : (
        length(v.resource_group_name) <= 90
      )
    ])
    error_message = "[from resourcegroups.ValidateName: invalid when len(value) > 90]"
  }
  validation {
    condition = alltrue([
      for k, v in var.private_link_service_endpoint_connections_lookup : (
        !endswith(v.resource_group_name, ".")
      )
    ])
    error_message = "[from resourcegroups.ValidateName: must not end with \".\"]"
  }
  validation {
    condition = alltrue([
      for k, v in var.private_link_service_endpoint_connections_lookup : (
        length(v.resource_group_name) != 0
      )
    ])
    error_message = "[from resourcegroups.ValidateName: invalid when len(value) == 0]"
  }
  # Note: 3 additional provider-side validators are enforced at apply time but not mirrored as validation{} blocks here (bespoke or non-mechanically-translatable).
}

