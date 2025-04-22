module "secrets_manager" {
  source      = "./modules/secrets_manager"
  db_password = var.db_password
}

module "aurora_cluster" {
  source      = "./modules/aurora-cluster"
  db_username = var.db_username
  db_password = var.db_password
  engine      = "aurora-mysql"
  engine_mode = "provisioned"
}