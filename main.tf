data "okta_realm" "realm_lookup" {
  for_each = var.realm_lookup

  name       = each.value.name
  realm_type = each.value.realm_type
}

