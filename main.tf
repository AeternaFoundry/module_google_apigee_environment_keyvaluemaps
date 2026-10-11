resource "google_apigee_environment_keyvaluemaps" "apigee_environment_keyvaluemaps" {
  for_each = var.apigee_environment_keyvaluemaps

  env_id          = each.value.env_id
  name            = each.value.name
  deletion_policy = each.value.deletion_policy

  dynamic "timeouts" {
    for_each = each.value.timeouts != null ? [each.value.timeouts] : []
    content {
      create = timeouts.value.create
      delete = timeouts.value.delete
    }
  }
}

