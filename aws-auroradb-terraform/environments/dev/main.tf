resource "aws_secretsmanager_secret" "db_secret" {
  name        = var.secret_name
  description = "Secret for AuroraDB credentials"
}

resource "aws_secretsmanager_secret_version" "db_secret_version" {
  secret_id     = aws_secretsmanager_secret.db_secret.id
  secret_string = jsonencode({
    username = var.db_username
    password = var.db_password
  })
}

module "auroradb" {
  source          = "../../modules/auroradb"
  db_name         = var.db_name
  instance_type   = var.instance_type
  engine          = var.engine
  secret_arn      = aws_secretsmanager_secret.db_secret.arn
}

output "db_secret_arn" {
  value = aws_secretsmanager_secret.db_secret.arn
}

output "aurora_cluster_endpoint" {
  value = module.auroradb.cluster_endpoint
}