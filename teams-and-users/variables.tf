variable "api_id" {
  description = "An API id tied to an admin user"
  default     = "<<api_id>>"
}


variable "api_key" {
  description = "An API key tied to an admin user"
  default     = "<<api_key>>"
  sensitive   = true
}
