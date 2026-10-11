variable "roles" {
  description = <<EOT
Map of roles, attributes below
Required:
    - name
Optional:
    - auto_increment_version
    - description
    - display_name
    - global
    - group
    - hidden
    - org_id
    - uid
    - version
    - permissions (block):
        - action (required)
        - scope (optional)
EOT

  type = map(object({
    name                   = string
    auto_increment_version = optional(bool)
    description            = optional(string)
    display_name           = optional(string)
    global                 = optional(bool)
    group                  = optional(string)
    hidden                 = optional(bool)
    org_id                 = optional(string)
    uid                    = optional(string)
    version                = optional(number)
    permissions = optional(list(object({
      action = string
      scope  = optional(string)
    })))
  }))
}

