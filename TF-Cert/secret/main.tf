provider "aws" {
  region = "ap-south-1"
}

# We can set this env variables
variable "username" {
  type = string
}

# We can set this env variables
variable "password" {
  type = string
}

# SECRET INJECTION
provider "valut" {
  auth_login {
    path =auth/userpass/login/var.username
    parameters = {
      password = var.password
    }
  }
}


data "valut_generic_secret" "authtoken" {
  path = "secret/authtoken"
}

# data "valut_generic_secret" "dbuser" {
#   path = "secret/authtoken"
# }

# data "valut_generic_secret" "dbpassword" {
#   path = "secret/authtoken"
# }

variable "vpcname" {
  type = string
}


resource "aws_vpc" "myvpc" {
  cidr_block = "10.0.0.0/16"

  tags = {
    Name = var.vpcname
  }
}