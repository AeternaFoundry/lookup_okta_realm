output "realm_lookup_id" {
  description = "Map of id values across all realm_lookup, keyed the same as var.realm_lookup except keys with no id are omitted"
  value       = { for k, v in data.okta_realm.realm_lookup : k => v.id if v.id != null && length(v.id) > 0 }
}
output "realm_lookup_is_default" {
  description = "Map of is_default values across all realm_lookup, keyed the same as var.realm_lookup except keys with no is_default are omitted"
  value       = { for k, v in data.okta_realm.realm_lookup : k => v.is_default if v.is_default != null }
}
output "realm_lookup_name" {
  description = "Map of name values across all realm_lookup, keyed the same as var.realm_lookup except keys with no name are omitted"
  value       = { for k, v in data.okta_realm.realm_lookup : k => v.name if v.name != null && length(v.name) > 0 }
}
output "realm_lookup_realm_type" {
  description = "Map of realm_type values across all realm_lookup, keyed the same as var.realm_lookup except keys with no realm_type are omitted"
  value       = { for k, v in data.okta_realm.realm_lookup : k => v.realm_type if v.realm_type != null && length(v.realm_type) > 0 }
}

