variable "secrets_sync_configs" {
  description = <<EOT
Map of secrets_sync_configs, attributes below
Optional:
    - disabled
    - namespace
    - queue_capacity
EOT

  type = map(object({
    disabled       = optional(bool)
    namespace      = optional(string)
    queue_capacity = optional(number)
  }))
}

