resource "aws_secretsmanager_secret" "aurora_db_secret" {
  name        = var.secret_name
  description = "Secret for AuroraDB credentials"
}

resource "aws_secretsmanager_secret_version" "aurora_db_secret_version" {
  secret_id     = aws_secretsmanager_secret.aurora_db_secret.id
  secret_string = jsonencode({
    username = var.db_username
    password = var.db_password
  })
}

module "auroradb" {
  source          = "../../modules/auroradb"
  db_instance_type = var.db_instance_type
  db_name         = var.db_name
  engine          = var.engine
  secret_arn      = aws_secretsmanager_secret.aurora_db_secret.arn
}

output "aurora_db_secret_arn" {
  value = aws_secretsmanager_secret.aurora_db_secret.arn
}

output "aurora_db_endpoint" {
  value = module.auroradb.cluster_endpoint
}