output "bedrockagent_knowledge_bases_id" {
  description = "Map of id values across all bedrockagent_knowledge_bases, keyed the same as var.bedrockagent_knowledge_bases"
  value       = { for k, v in aws_bedrockagent_knowledge_base.bedrockagent_knowledge_bases : k => v.id if v.id != null && length(v.id) > 0 }
}
output "bedrockagent_knowledge_bases_arn" {
  description = "Map of arn values across all bedrockagent_knowledge_bases, keyed the same as var.bedrockagent_knowledge_bases"
  value       = { for k, v in aws_bedrockagent_knowledge_base.bedrockagent_knowledge_bases : k => v.arn if v.arn != null && length(v.arn) > 0 }
}
output "bedrockagent_knowledge_bases_created_at" {
  description = "Map of created_at values across all bedrockagent_knowledge_bases, keyed the same as var.bedrockagent_knowledge_bases"
  value       = { for k, v in aws_bedrockagent_knowledge_base.bedrockagent_knowledge_bases : k => v.created_at if v.created_at != null && length(v.created_at) > 0 }
}
output "bedrockagent_knowledge_bases_description" {
  description = "Map of description values across all bedrockagent_knowledge_bases, keyed the same as var.bedrockagent_knowledge_bases"
  value       = { for k, v in aws_bedrockagent_knowledge_base.bedrockagent_knowledge_bases : k => v.description if v.description != null && length(v.description) > 0 }
}
output "bedrockagent_knowledge_bases_failure_reasons" {
  description = "Map of failure_reasons values across all bedrockagent_knowledge_bases, keyed the same as var.bedrockagent_knowledge_bases"
  value       = { for k, v in aws_bedrockagent_knowledge_base.bedrockagent_knowledge_bases : k => v.failure_reasons if v.failure_reasons != null && length(v.failure_reasons) > 0 }
}
output "bedrockagent_knowledge_bases_knowledge_base_configuration" {
  description = "Map of knowledge_base_configuration values across all bedrockagent_knowledge_bases, keyed the same as var.bedrockagent_knowledge_bases"
  value       = { for k, v in aws_bedrockagent_knowledge_base.bedrockagent_knowledge_bases : k => v.knowledge_base_configuration if v.knowledge_base_configuration != null && length(v.knowledge_base_configuration) > 0 }
}
output "bedrockagent_knowledge_bases_name" {
  description = "Map of name values across all bedrockagent_knowledge_bases, keyed the same as var.bedrockagent_knowledge_bases"
  value       = { for k, v in aws_bedrockagent_knowledge_base.bedrockagent_knowledge_bases : k => v.name if v.name != null && length(v.name) > 0 }
}
output "bedrockagent_knowledge_bases_region" {
  description = "Map of region values across all bedrockagent_knowledge_bases, keyed the same as var.bedrockagent_knowledge_bases"
  value       = { for k, v in aws_bedrockagent_knowledge_base.bedrockagent_knowledge_bases : k => v.region if v.region != null && length(v.region) > 0 }
}
output "bedrockagent_knowledge_bases_role_arn" {
  description = "Map of role_arn values across all bedrockagent_knowledge_bases, keyed the same as var.bedrockagent_knowledge_bases"
  value       = { for k, v in aws_bedrockagent_knowledge_base.bedrockagent_knowledge_bases : k => v.role_arn if v.role_arn != null && length(v.role_arn) > 0 }
}
output "bedrockagent_knowledge_bases_storage_configuration" {
  description = "Map of storage_configuration values across all bedrockagent_knowledge_bases, keyed the same as var.bedrockagent_knowledge_bases"
  value       = { for k, v in aws_bedrockagent_knowledge_base.bedrockagent_knowledge_bases : k => v.storage_configuration if v.storage_configuration != null && length(v.storage_configuration) > 0 }
}
output "bedrockagent_knowledge_bases_tags" {
  description = "Map of tags values across all bedrockagent_knowledge_bases, keyed the same as var.bedrockagent_knowledge_bases"
  value       = { for k, v in aws_bedrockagent_knowledge_base.bedrockagent_knowledge_bases : k => v.tags if v.tags != null && length(v.tags) > 0 }
}
output "bedrockagent_knowledge_bases_tags_all" {
  description = "Map of tags_all values across all bedrockagent_knowledge_bases, keyed the same as var.bedrockagent_knowledge_bases"
  value       = { for k, v in aws_bedrockagent_knowledge_base.bedrockagent_knowledge_bases : k => v.tags_all if v.tags_all != null && length(v.tags_all) > 0 }
}
output "bedrockagent_knowledge_bases_updated_at" {
  description = "Map of updated_at values across all bedrockagent_knowledge_bases, keyed the same as var.bedrockagent_knowledge_bases"
  value       = { for k, v in aws_bedrockagent_knowledge_base.bedrockagent_knowledge_bases : k => v.updated_at if v.updated_at != null && length(v.updated_at) > 0 }
}

