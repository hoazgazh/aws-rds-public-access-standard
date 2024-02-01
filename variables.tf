variable "username" {
  description = "The master username for the database."
  type        = string
  sensitive   = true
  default = "postgres"
}
 
variable "password" {
  description = "The master password for the database."
  type        = string
  sensitive   = true
  default = "postgres"
}