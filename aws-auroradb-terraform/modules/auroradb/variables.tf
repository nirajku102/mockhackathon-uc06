variable "db_instance_class" {
  description = "The instance type for the AuroraDB instance."
  type        = string
  default     = "db.t3.medium"
}

variable "db_name" {
  description = "The name of the database to create."
  type        = string
  default     = "mydatabase"
}

variable "engine" {
  description = "The database engine to use for the AuroraDB cluster."
  type        = string
  default     = "aurora"
}

variable "engine_version" {
  description = "The version of the database engine to use."
  type        = string
  default     = "5.6.10a"
}

variable "cluster_identifier" {
  description = "The identifier for the AuroraDB cluster."
  type        = string
}

variable "db_username" {
  description = "The username for the database."
  type        = string
}

variable "db_password" {
  description = "The password for the database."
  type        = string
  sensitive   = true
}

variable "vpc_security_group_ids" {
  description = "The VPC security group IDs to associate with the AuroraDB instance."
  type        = list(string)
}

variable "subnet_ids" {
  description = "The subnet IDs for the AuroraDB instances."
  type        = list(string)
}