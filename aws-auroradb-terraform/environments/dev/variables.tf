variable "db_instance_class" {
  description = "The instance class for the AuroraDB instance."
  type        = string
  default     = "db.t3.medium"
}

variable "db_name" {
  description = "The name of the database to create."
  type        = string
  default     = "mydatabase"
}

variable "db_engine" {
  description = "The database engine to use."
  type        = string
  default     = "aurora"
}

variable "db_username" {
  description = "The username for the database."
  type        = string
  default     = "admin"
}

variable "db_password" {
  description = "The password for the database."
  type        = string
  sensitive   = true
}

variable "secret_name" {
  description = "The name of the secret to store in AWS Secrets Manager."
  type        = string
  default     = "mydbsecret"
}

variable "secret_description" {
  description = "A description for the secret."
  type        = string
  default     = "Database credentials for AuroraDB"
}