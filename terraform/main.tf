module "secrets_manager" {
  source = "./modules/secrets_manager"
  db_password = var.db_password
}

# module "rds_database" {
#  source = "./modules/rds"
#  db_username = var.db_username
#}