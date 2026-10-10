variable "bedrockagent_knowledge_bases" {
  description = <<EOT
Map of bedrockagent_knowledge_bases, attributes below
Required:
    - name
    - role_arn
Optional:
    - description
    - region
    - tags
    - knowledge_base_configuration (block):
        - kendra_knowledge_base_configuration (optional, block):
            - kendra_index_arn (required)
        - managed_knowledge_base_configuration (optional, block):
            - embedding_model_arn (optional)
            - embedding_model_configuration (optional, block):
                - bedrock_embedding_model_configuration (optional, block):
                    - audio (optional, block):
                        - segmentation_configuration (optional, block):
                            - fixed_length_duration (required)
                    - dimensions (optional)
                    - embedding_data_type (optional)
                    - video (optional, block):
                        - segmentation_configuration (optional, block):
                            - fixed_length_duration (required)
            - embedding_model_type (optional)
            - server_side_encryption_configuration (optional, block):
                - kms_key_arn (optional)
        - sql_knowledge_base_configuration (optional, block):
            - redshift_configuration (optional, block):
                - query_engine_configuration (optional, block):
                    - provisioned_configuration (optional, block):
                        - auth_configuration (optional, block):
                            - database_user (optional)
                            - type (required)
                            - username_password_secret_arn (optional)
                        - cluster_identifier (required)
                    - serverless_configuration (optional, block):
                        - auth_configuration (optional, block):
                            - type (required)
                            - username_password_secret_arn (optional)
                        - workgroup_arn (required)
                    - type (required)
                - query_generation_configuration (optional, block):
                    - execution_timeout_seconds (optional)
                    - generation_context (optional, block):
                        - curated_query (optional, block):
                            - natural_language (required)
                            - sql (required)
                        - table (optional, block):
                            - column (optional, block):
                                - description (optional)
                                - inclusion (optional)
                                - name (optional)
                            - description (optional)
                            - inclusion (optional)
                            - name (required)
                - storage_configuration (optional, block):
                    - aws_data_catalog_configuration (optional, block):
                        - table_names (required)
                    - redshift_configuration (optional, block):
                        - database_name (required)
                    - type (required)
            - type (required)
        - type (required)
        - vector_knowledge_base_configuration (optional, block):
            - embedding_model_arn (required)
            - embedding_model_configuration (optional, block):
                - bedrock_embedding_model_configuration (optional, block):
                    - audio (optional, block):
                        - segmentation_configuration (optional, block):
                            - fixed_length_duration (required)
                    - dimensions (optional)
                    - embedding_data_type (optional)
                    - video (optional, block):
                        - segmentation_configuration (optional, block):
                            - fixed_length_duration (required)
            - supplemental_data_storage_configuration (optional, block):
                - storage_location (optional, block):
                    - s3_location (optional, block):
                        - uri (required)
                    - type (required)
    - storage_configuration (block):
        - mongo_db_atlas_configuration (optional, block):
            - collection_name (required)
            - credentials_secret_arn (required)
            - database_name (required)
            - endpoint (required)
            - endpoint_service_name (optional)
            - field_mapping (optional, block):
                - metadata_field (required)
                - text_field (required)
                - vector_field (required)
            - text_index_name (optional)
            - vector_index_name (required)
        - neptune_analytics_configuration (optional, block):
            - field_mapping (optional, block):
                - metadata_field (required)
                - text_field (required)
            - graph_arn (required)
        - opensearch_managed_cluster_configuration (optional, block):
            - domain_arn (required)
            - domain_endpoint (required)
            - field_mapping (optional, block):
                - metadata_field (required)
                - text_field (required)
                - vector_field (required)
            - vector_index_name (required)
        - opensearch_serverless_configuration (optional, block):
            - collection_arn (required)
            - field_mapping (optional, block):
                - metadata_field (required)
                - text_field (required)
                - vector_field (required)
            - vector_index_name (required)
        - pinecone_configuration (optional, block):
            - connection_string (required)
            - credentials_secret_arn (required)
            - field_mapping (optional, block):
                - metadata_field (required)
                - text_field (required)
            - namespace (optional)
        - rds_configuration (optional, block):
            - credentials_secret_arn (required)
            - database_name (required)
            - field_mapping (optional, block):
                - custom_metadata_field (optional)
                - metadata_field (required)
                - primary_key_field (required)
                - text_field (required)
                - vector_field (required)
            - resource_arn (required)
            - table_name (required)
        - redis_enterprise_cloud_configuration (optional, block):
            - credentials_secret_arn (required)
            - endpoint (required)
            - field_mapping (optional, block):
                - metadata_field (optional)
                - text_field (optional)
                - vector_field (optional)
            - vector_index_name (required)
        - s3_vectors_configuration (optional, block):
            - index_arn (optional)
            - index_name (optional)
            - vector_bucket_arn (optional)
        - type (required)
EOT

  type = map(object({
    name        = string
    role_arn    = string
    description = optional(string)
    region      = optional(string)
    tags        = optional(map(string))
    knowledge_base_configuration = optional(list(object({
      kendra_knowledge_base_configuration = optional(list(object({
        kendra_index_arn = string
      })))
      managed_knowledge_base_configuration = optional(list(object({
        embedding_model_arn = optional(string)
        embedding_model_configuration = optional(list(object({
          bedrock_embedding_model_configuration = optional(list(object({
            audio = optional(list(object({
              segmentation_configuration = optional(list(object({
                fixed_length_duration = number
              })))
            })))
            dimensions          = optional(number)
            embedding_data_type = optional(string)
            video = optional(list(object({
              segmentation_configuration = optional(list(object({
                fixed_length_duration = number
              })))
            })))
          })))
        })))
        embedding_model_type = optional(string)
        server_side_encryption_configuration = optional(list(object({
          kms_key_arn = optional(string)
        })))
      })))
      sql_knowledge_base_configuration = optional(list(object({
        redshift_configuration = optional(list(object({
          query_engine_configuration = optional(list(object({
            provisioned_configuration = optional(list(object({
              auth_configuration = optional(list(object({
                database_user                = optional(string)
                type                         = string
                username_password_secret_arn = optional(string)
              })))
              cluster_identifier = string
            })))
            serverless_configuration = optional(list(object({
              auth_configuration = optional(list(object({
                type                         = string
                username_password_secret_arn = optional(string)
              })))
              workgroup_arn = string
            })))
            type = string
          })))
          query_generation_configuration = optional(list(object({
            execution_timeout_seconds = optional(number)
            generation_context = optional(list(object({
              curated_query = optional(list(object({
                natural_language = string
                sql              = string
              })))
              table = optional(list(object({
                column = optional(list(object({
                  description = optional(string)
                  inclusion   = optional(string)
                  name        = optional(string)
                })))
                description = optional(string)
                inclusion   = optional(string)
                name        = string
              })))
            })))
          })))
          storage_configuration = optional(list(object({
            aws_data_catalog_configuration = optional(list(object({
              table_names = set(string)
            })))
            redshift_configuration = optional(list(object({
              database_name = string
            })))
            type = string
          })))
        })))
        type = string
      })))
      type = string
      vector_knowledge_base_configuration = optional(list(object({
        embedding_model_arn = string
        embedding_model_configuration = optional(list(object({
          bedrock_embedding_model_configuration = optional(list(object({
            audio = optional(list(object({
              segmentation_configuration = optional(list(object({
                fixed_length_duration = number
              })))
            })))
            dimensions          = optional(number)
            embedding_data_type = optional(string)
            video = optional(list(object({
              segmentation_configuration = optional(list(object({
                fixed_length_duration = number
              })))
            })))
          })))
        })))
        supplemental_data_storage_configuration = optional(list(object({
          storage_location = optional(list(object({
            s3_location = optional(list(object({
              uri = string
            })))
            type = string
          })))
        })))
      })))
    })))
    storage_configuration = optional(list(object({
      mongo_db_atlas_configuration = optional(list(object({
        collection_name        = string
        credentials_secret_arn = string
        database_name          = string
        endpoint               = string
        endpoint_service_name  = optional(string)
        field_mapping = optional(list(object({
          metadata_field = string
          text_field     = string
          vector_field   = string
        })))
        text_index_name   = optional(string)
        vector_index_name = string
      })))
      neptune_analytics_configuration = optional(list(object({
        field_mapping = optional(list(object({
          metadata_field = string
          text_field     = string
        })))
        graph_arn = string
      })))
      opensearch_managed_cluster_configuration = optional(list(object({
        domain_arn      = string
        domain_endpoint = string
        field_mapping = optional(list(object({
          metadata_field = string
          text_field     = string
          vector_field   = string
        })))
        vector_index_name = string
      })))
      opensearch_serverless_configuration = optional(list(object({
        collection_arn = string
        field_mapping = optional(list(object({
          metadata_field = string
          text_field     = string
          vector_field   = string
        })))
        vector_index_name = string
      })))
      pinecone_configuration = optional(list(object({
        connection_string      = string
        credentials_secret_arn = string
        field_mapping = optional(list(object({
          metadata_field = string
          text_field     = string
        })))
        namespace = optional(string)
      })))
      rds_configuration = optional(list(object({
        credentials_secret_arn = string
        database_name          = string
        field_mapping = optional(list(object({
          custom_metadata_field = optional(string)
          metadata_field        = string
          primary_key_field     = string
          text_field            = string
          vector_field          = string
        })))
        resource_arn = string
        table_name   = string
      })))
      redis_enterprise_cloud_configuration = optional(list(object({
        credentials_secret_arn = string
        endpoint               = string
        field_mapping = optional(list(object({
          metadata_field = optional(string)
          text_field     = optional(string)
          vector_field   = optional(string)
        })))
        vector_index_name = string
      })))
      s3_vectors_configuration = optional(list(object({
        index_arn         = optional(string)
        index_name        = optional(string)
        vector_bucket_arn = optional(string)
      })))
      type = string
    })))
  }))
}

