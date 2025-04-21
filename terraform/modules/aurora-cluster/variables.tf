variable "db_username" {
  type        = string
  description = "The master username for the Aurora cluster."
}

variable "db_password" {
  type        = string
  description = "The master password for the Aurora cluster."
}

variable "db_name" {
  type        = string
  description = "The name of the initial database to create."
  default     = "defaultdb"
}

variable "engine" {
  type        = string
  description = "The database engine to use for the Aurora cluster."
}

variable "engine_mode" {
  type        = string
  description = "The engine mode for the Aurora cluster."
}

variable "instance_class" {
  type        = string
  description = "The instance class for the Aurora cluster instances."
  default     = "db.r5.large"
}

variable "instance_count" {
  type        = number
  description = "The number of instances in the Aurora cluster."
  default     = 2
}