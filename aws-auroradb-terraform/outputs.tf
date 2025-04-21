resource "aws_rds_cluster" "aurora" {
  cluster_identifier      = var.cluster_identifier
  engine                 = var.engine
  engine_version         = var.engine_version
  master_username        = var.master_username
  master_password        = var.master_password
  database_name          = var.database_name
  skip_final_snapshot    = true
}

resource "aws_rds_cluster_instance" "aurora_instance" {
  count                 = var.instance_count
  cluster_identifier    = aws_rds_cluster.aurora.id
  instance_class        = var.instance_class
  engine               = var.engine
  engine_version       = var.engine_version
}

output "cluster_endpoint" {
  value = aws_rds_cluster.aurora.endpoint
}

output "instance_identifiers" {
  value = aws_rds_cluster_instance.aurora_instance[*].id
}