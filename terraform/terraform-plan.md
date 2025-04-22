
Terraform used the selected providers to generate the following execution
plan. Resource actions are indicated with the following symbols:
  + create

Terraform will perform the following actions:

  # module.aurora_cluster.aws_rds_cluster.aurora will be created
  + resource "aws_rds_cluster" "aurora" {
      + allocated_storage               = (known after apply)
      + apply_immediately               = (known after apply)
      + arn                             = (known after apply)
      + availability_zones              = (known after apply)
      + backup_retention_period         = 7
      + cluster_identifier              = "aurora-cluster"
      + cluster_identifier_prefix       = (known after apply)
      + cluster_members                 = (known after apply)
      + cluster_resource_id             = (known after apply)
      + copy_tags_to_snapshot           = false
      + database_name                   = "defaultdb"
      + db_cluster_parameter_group_name = (known after apply)
      + db_subnet_group_name            = (known after apply)
      + enable_global_write_forwarding  = false
      + enable_http_endpoint            = false
      + endpoint                        = (known after apply)
      + engine                          = "aurora-mysql"
      + engine_mode                     = "provisioned"
      + engine_version                  = (known after apply)
      + engine_version_actual           = (known after apply)
      + hosted_zone_id                  = (known after apply)
      + iam_roles                       = (known after apply)
      + id                              = (known after apply)
      + kms_key_id                      = (known after apply)
      + master_password                 = (sensitive value)
      + master_user_secret              = (known after apply)
      + master_user_secret_kms_key_id   = (known after apply)
      + master_username                 = "admin"
      + network_type                    = (known after apply)
      + port                            = (known after apply)
      + preferred_backup_window         = "07:00-09:00"
      + preferred_maintenance_window    = (known after apply)
      + reader_endpoint                 = (known after apply)
      + skip_final_snapshot             = false
      + storage_encrypted               = (known after apply)
      + storage_type                    = (known after apply)
      + tags_all                        = (known after apply)
      + vpc_security_group_ids          = (known after apply)
    }

  # module.aurora_cluster.aws_rds_cluster_instance.aurora_instance[0] will be created
  + resource "aws_rds_cluster_instance" "aurora_instance" {
      + apply_immediately                     = (known after apply)
      + arn                                   = (known after apply)
      + auto_minor_version_upgrade            = true
      + availability_zone                     = (known after apply)
      + ca_cert_identifier                    = (known after apply)
      + cluster_identifier                    = (known after apply)
      + copy_tags_to_snapshot                 = false
      + db_parameter_group_name               = (known after apply)
      + db_subnet_group_name                  = (known after apply)
      + dbi_resource_id                       = (known after apply)
      + endpoint                              = (known after apply)
      + engine                                = "aurora-mysql"
      + engine_version                        = (known after apply)
      + engine_version_actual                 = (known after apply)
      + id                                    = (known after apply)
      + identifier                            = "aurora-instance-1"
      + identifier_prefix                     = (known after apply)
      + instance_class                        = "db.r5.large"
      + kms_key_id                            = (known after apply)
      + monitoring_interval                   = 0
      + monitoring_role_arn                   = (known after apply)
      + network_type                          = (known after apply)
      + performance_insights_enabled          = (known after apply)
      + performance_insights_kms_key_id       = (known after apply)
      + performance_insights_retention_period = (known after apply)
      + port                                  = (known after apply)
      + preferred_backup_window               = (known after apply)
      + preferred_maintenance_window          = (known after apply)
      + promotion_tier                        = 0
      + publicly_accessible                   = false
      + storage_encrypted                     = (known after apply)
      + tags_all                              = (known after apply)
      + writer                                = (known after apply)
    }

  # module.aurora_cluster.aws_rds_cluster_instance.aurora_instance[1] will be created
  + resource "aws_rds_cluster_instance" "aurora_instance" {
      + apply_immediately                     = (known after apply)
      + arn                                   = (known after apply)
      + auto_minor_version_upgrade            = true
      + availability_zone                     = (known after apply)
      + ca_cert_identifier                    = (known after apply)
      + cluster_identifier                    = (known after apply)
      + copy_tags_to_snapshot                 = false
      + db_parameter_group_name               = (known after apply)
      + db_subnet_group_name                  = (known after apply)
      + dbi_resource_id                       = (known after apply)
      + endpoint                              = (known after apply)
      + engine                                = "aurora-mysql"
      + engine_version                        = (known after apply)
      + engine_version_actual                 = (known after apply)
      + id                                    = (known after apply)
      + identifier                            = "aurora-instance-2"
      + identifier_prefix                     = (known after apply)
      + instance_class                        = "db.r5.large"
      + kms_key_id                            = (known after apply)
      + monitoring_interval                   = 0
      + monitoring_role_arn                   = (known after apply)
      + network_type                          = (known after apply)
      + performance_insights_enabled          = (known after apply)
      + performance_insights_kms_key_id       = (known after apply)
      + performance_insights_retention_period = (known after apply)
      + port                                  = (known after apply)
      + preferred_backup_window               = (known after apply)
      + preferred_maintenance_window          = (known after apply)
      + promotion_tier                        = 0
      + publicly_accessible                   = false
      + storage_encrypted                     = (known after apply)
      + tags_all                              = (known after apply)
      + writer                                = (known after apply)
    }

  # module.secrets_manager.aws_secretsmanager_secret.db_password will be created
  + resource "aws_secretsmanager_secret" "db_password" {
      + arn                            = (known after apply)
      + force_overwrite_replica_secret = false
      + id                             = (known after apply)
      + name                           = "auroradatabase/mysql/password"
      + name_prefix                    = (known after apply)
      + policy                         = (known after apply)
      + recovery_window_in_days        = 30
      + rotation_enabled               = (known after apply)
      + rotation_lambda_arn            = (known after apply)
      + tags_all                       = (known after apply)

      + replica (known after apply)

      + rotation_rules (known after apply)
    }

  # module.secrets_manager.aws_secretsmanager_secret_version.db_password_version will be created
  + resource "aws_secretsmanager_secret_version" "db_password_version" {
      + arn            = (known after apply)
      + id             = (known after apply)
      + secret_id      = (known after apply)
      + secret_string  = (sensitive value)
      + version_id     = (known after apply)
      + version_stages = (known after apply)
    }

Plan: 5 to add, 0 to change, 0 to destroy.
