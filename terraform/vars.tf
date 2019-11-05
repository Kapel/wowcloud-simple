# ---------------------------------------------------------------------------------------------------------------------
# ENVIRONMENT VARIABLES
# Define these secrets as environment variables
# ---------------------------------------------------------------------------------------------------------------------

# AWS_ACCESS_KEY_ID
# AWS_SECRET_ACCESS_KEY

# ---------------------------------------------------------------------------------------------------------------------
# OPTIONAL PARAMETERS
# ---------------------------------------------------------------------------------------------------------------------

variable "SSH" {
  description = "The port the server will use for HTTP requests"
  default = 22
}

variable "AUTHSERVER" {
  description = "The port the server will use for HTTPS requests"
  default = 3724
}

variable "WORLDSERVER" {
  description = "The port the server will use for HTTPS requests"
  default = 8085
}

variable "region"{
  description = "Default region"
  default = "eu-north-1"
}
