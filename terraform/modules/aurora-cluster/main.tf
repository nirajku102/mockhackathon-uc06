resource "aws_rds_cluster" "aurora" {
  cluster_identifier = "aurora-cluster"
  engine             = var.engine
  engine_mode        = var.engine_mode
  master_username    = var.db_username
  master_password    = var.db_password
  database_name      = var.db_name

  backup_retention_period = 7
  preferred_backup_window = "07:00-09:00"

  lifecycle {
    prevent_destroy = true
  }
}

resource "aws_rds_cluster_instance" "aurora_instance" {
  count              = var.instance_count
  identifier         = "aurora-instance-${count.index + 1}"
  cluster_identifier = aws_rds_cluster.aurora.id
  instance_class     = var.instance_class
  engine             = aws_rds_cluster.aurora.engine
}

output "cluster_endpoint" {
  value = aws_rds_cluster.aurora.endpoint
}