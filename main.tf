resource "grafana_role" "roles" {
  for_each = var.roles

  name                   = each.value.name
  auto_increment_version = each.value.auto_increment_version
  description            = each.value.description
  display_name           = each.value.display_name
  global                 = each.value.global
  group                  = each.value.group
  hidden                 = each.value.hidden
  org_id                 = each.value.org_id
  uid                    = each.value.uid
  version                = each.value.version

  dynamic "permissions" {
    for_each = each.value.permissions != null ? each.value.permissions : []
    content {
      action = permissions.value.action
      scope  = permissions.value.scope
    }
  }
}

