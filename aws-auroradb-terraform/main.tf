resource "aws_secretsmanager_secret" "db_credentials" {
  name        = var.secret_name
  description = "Database credentials for AuroraDB"
}

resource "aws_secretsmanager_secret_version" "db_credentials_version" {
  secret_id     = aws_secretsmanager_secret.db_credentials.id
  secret_string = jsonencode({
    username = var.db_username
    password = var.db_password
  })
}

module "auroradb" {
  source = "../modules/auroradb"

  db_name     = var.db_name
  instance_type = var.instance_type
  engine      = var.engine
  secret_arn  = aws_secretsmanager_secret.db_credentials.arn
}

output "db_secret_arn" {
  value = aws_secretsmanager_secret.db_credentials.arn
}