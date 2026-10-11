output "apigee_environment_keyvaluemaps_id" {
  description = "Map of id values across all apigee_environment_keyvaluemaps, keyed the same as var.apigee_environment_keyvaluemaps except keys with no id are omitted"
  value       = { for k, v in google_apigee_environment_keyvaluemaps.apigee_environment_keyvaluemaps : k => v.id if v.id != null && length(v.id) > 0 }
}
output "apigee_environment_keyvaluemaps_deletion_policy" {
  description = "Map of deletion_policy values across all apigee_environment_keyvaluemaps, keyed the same as var.apigee_environment_keyvaluemaps except keys with no deletion_policy are omitted"
  value       = { for k, v in google_apigee_environment_keyvaluemaps.apigee_environment_keyvaluemaps : k => v.deletion_policy if v.deletion_policy != null && length(v.deletion_policy) > 0 }
}
output "apigee_environment_keyvaluemaps_env_id" {
  description = "Map of env_id values across all apigee_environment_keyvaluemaps, keyed the same as var.apigee_environment_keyvaluemaps except keys with no env_id are omitted"
  value       = { for k, v in google_apigee_environment_keyvaluemaps.apigee_environment_keyvaluemaps : k => v.env_id if v.env_id != null && length(v.env_id) > 0 }
}
output "apigee_environment_keyvaluemaps_name" {
  description = "Map of name values across all apigee_environment_keyvaluemaps, keyed the same as var.apigee_environment_keyvaluemaps except keys with no name are omitted"
  value       = { for k, v in google_apigee_environment_keyvaluemaps.apigee_environment_keyvaluemaps : k => v.name if v.name != null && length(v.name) > 0 }
}

