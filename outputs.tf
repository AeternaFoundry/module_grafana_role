output "roles_id" {
  description = "Map of id values across all roles, keyed the same as var.roles except keys with no id are omitted"
  value       = { for k, v in grafana_role.roles : k => v.id if v.id != null && length(v.id) > 0 }
}
output "roles_auto_increment_version" {
  description = "Map of auto_increment_version values across all roles, keyed the same as var.roles except keys with no auto_increment_version are omitted"
  value       = { for k, v in grafana_role.roles : k => v.auto_increment_version if v.auto_increment_version != null }
}
output "roles_description" {
  description = "Map of description values across all roles, keyed the same as var.roles except keys with no description are omitted"
  value       = { for k, v in grafana_role.roles : k => v.description if v.description != null && length(v.description) > 0 }
}
output "roles_display_name" {
  description = "Map of display_name values across all roles, keyed the same as var.roles except keys with no display_name are omitted"
  value       = { for k, v in grafana_role.roles : k => v.display_name if v.display_name != null && length(v.display_name) > 0 }
}
output "roles_global" {
  description = "Map of global values across all roles, keyed the same as var.roles except keys with no global are omitted"
  value       = { for k, v in grafana_role.roles : k => v.global if v.global != null }
}
output "roles_group" {
  description = "Map of group values across all roles, keyed the same as var.roles except keys with no group are omitted"
  value       = { for k, v in grafana_role.roles : k => v.group if v.group != null && length(v.group) > 0 }
}
output "roles_hidden" {
  description = "Map of hidden values across all roles, keyed the same as var.roles except keys with no hidden are omitted"
  value       = { for k, v in grafana_role.roles : k => v.hidden if v.hidden != null }
}
output "roles_name" {
  description = "Map of name values across all roles, keyed the same as var.roles except keys with no name are omitted"
  value       = { for k, v in grafana_role.roles : k => v.name if v.name != null && length(v.name) > 0 }
}
output "roles_org_id" {
  description = "Map of org_id values across all roles, keyed the same as var.roles except keys with no org_id are omitted"
  value       = { for k, v in grafana_role.roles : k => v.org_id if v.org_id != null && length(v.org_id) > 0 }
}
output "roles_permissions" {
  description = "Map of permissions values across all roles, keyed the same as var.roles except keys with no permissions are omitted"
  value       = { for k, v in grafana_role.roles : k => v.permissions if v.permissions != null && length(v.permissions) > 0 }
}
output "roles_uid" {
  description = "Map of uid values across all roles, keyed the same as var.roles except keys with no uid are omitted"
  value       = { for k, v in grafana_role.roles : k => v.uid if v.uid != null && length(v.uid) > 0 }
}
output "roles_version" {
  description = "Map of version values across all roles, keyed the same as var.roles except keys with no version are omitted"
  value       = { for k, v in grafana_role.roles : k => v.version if v.version != null }
}

