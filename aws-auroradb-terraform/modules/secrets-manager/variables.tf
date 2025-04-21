variable "secret_name" {
  description = "The name of the secret to be created in AWS Secrets Manager."
  type        = string
}

variable "secret_value" {
  description = "The value of the secret to be stored in AWS Secrets Manager."
  type        = string
}

variable "secret_description" {
  description = "A description for the secret."
  type        = string
  default     = "Secret for AuroraDB credentials"
}