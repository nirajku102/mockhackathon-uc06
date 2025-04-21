variable "db_instance_class" {
  description = "The instance type for the AuroraDB cluster."
  type        = string
  default     = "db.t3.medium"
}

variable "db_name" {
  description = "The name of the database to create."
  type        = string
  default     = "mydatabase"
}

variable "engine" {
  description = "The database engine to use."
  type        = string
  default     = "aurora"
}

variable "engine_version" {
  description = "The version of the database engine."
  type        = string
  default     = "5.6.10a"
}

variable "master_username" {
  description = "The master username for the database."
  type        = string
}

variable "master_password" {
  description = "The master password for the database."
  type        = string
}

variable "vpc_security_group_ids" {
  description = "The VPC security group IDs to associate with the DB cluster."
  type        = list(string)
}

variable "subnet_ids" {
  description = "The subnet IDs for the DB cluster."
  type        = list(string)
}