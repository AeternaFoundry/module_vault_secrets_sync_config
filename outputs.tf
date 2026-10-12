output "secrets_sync_configs_id" {
  description = "Map of id values across all secrets_sync_configs, keyed the same as var.secrets_sync_configs except keys with no id are omitted"
  value       = { for k, v in vault_secrets_sync_config.secrets_sync_configs : k => v.id if v.id != null && length(v.id) > 0 }
}
output "secrets_sync_configs_disabled" {
  description = "Map of disabled values across all secrets_sync_configs, keyed the same as var.secrets_sync_configs except keys with no disabled are omitted"
  value       = { for k, v in vault_secrets_sync_config.secrets_sync_configs : k => v.disabled if v.disabled != null }
}
output "secrets_sync_configs_namespace" {
  description = "Map of namespace values across all secrets_sync_configs, keyed the same as var.secrets_sync_configs except keys with no namespace are omitted"
  value       = { for k, v in vault_secrets_sync_config.secrets_sync_configs : k => v.namespace if v.namespace != null && length(v.namespace) > 0 }
}
output "secrets_sync_configs_queue_capacity" {
  description = "Map of queue_capacity values across all secrets_sync_configs, keyed the same as var.secrets_sync_configs except keys with no queue_capacity are omitted"
  value       = { for k, v in vault_secrets_sync_config.secrets_sync_configs : k => v.queue_capacity if v.queue_capacity != null }
}

