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


variable "wowcloud-key"{
  description = "wowcloud-key"
  default = "wowcloud-key"
}

variable "wowcloud-keyvalue"{
  description = "wowcloud-keyvalue"
  default = "ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAABAQDAJNf0sSK/lwxr2F7GzqPugSAPOFpyatJziGvYcBdowWTpXqRhUGoBXwaaNd6UOaFm2G6Ya2Eqt5WjZtZ8Kn/kGPcMwwf+5wlqT8BsYjqrKPWb/fMRx5n+kGM79z7Zi2+PR0Tt206Ogqu9uO9kTqmogMrdq1FW4AVsyCncTOzN8KXio+WRQsl9GbzahBBkhkY+wMGPRzEIwgOnJJtjOXOOobkPRssEd0sNwC4YqHzL2llGd2tNgD7aeB3dz337ucZLP2tsTlJwQXCkYPP6E9GW6BUm2xIg1ZkiSOgUfiXLFGLHyAprX+KK6seRIBb7VQH3E2m1iGQUSgHTjxi5Gdfn Kapel"
}