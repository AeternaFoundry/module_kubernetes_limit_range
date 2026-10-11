output "limit_ranges_id" {
  description = "Map of id values across all limit_ranges, keyed the same as var.limit_ranges except keys with no id are omitted"
  value       = { for k, v in kubernetes_limit_range.limit_ranges : k => v.id if v.id != null && length(v.id) > 0 }
}
output "limit_ranges_metadata" {
  description = "Map of metadata values across all limit_ranges, keyed the same as var.limit_ranges except keys with no metadata are omitted"
  value       = { for k, v in kubernetes_limit_range.limit_ranges : k => one(v.metadata) if v.metadata != null && length(v.metadata) > 0 }
}
output "limit_ranges_spec" {
  description = "Map of spec values across all limit_ranges, keyed the same as var.limit_ranges except keys with no spec are omitted"
  value       = { for k, v in kubernetes_limit_range.limit_ranges : k => one(v.spec) if v.spec != null && length(v.spec) > 0 }
}

