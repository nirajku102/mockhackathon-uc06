output "secret_arn" {
  value = aws_secretsmanager_secret.my_secret.arn
}

output "secret_name" {
  value = aws_secretsmanager_secret.my_secret.name
}