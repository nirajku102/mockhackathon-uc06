variable "AWS_REGION" {
  type    = string
  default = "eu-north-1"
}

variable "db_password" {
  description = "Database administrator password"
  type = string
  sensitive = true
}

#variable "db_username" {
#  description = "database user name"
#  type = string
#}
