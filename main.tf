resource "vault_secrets_sync_config" "secrets_sync_configs" {
  for_each = var.secrets_sync_configs

  disabled       = each.value.disabled
  namespace      = each.value.namespace
  queue_capacity = each.value.queue_capacity
}

