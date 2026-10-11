variable "realm_lookup" {
  description = <<EOT
Map of realm_lookup, attributes below
Optional:
    - name
    - realm_type
EOT

  type = map(object({
    name       = optional(string)
    realm_type = optional(string)
  }))
}

