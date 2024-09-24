# String type
variable "vpcname" {
  type = string
  default = "myvpc"
}

# Number
variable "sshport" {
  type = number
  default = 22
}

# Boolean
variable "enabled" {
  default = true
}

# List
variable "mylist" {
  type = list(string)
  default = [ "t2.micro","t2.small","t2.medium" ]
}

# Maps
variable "mymap" {
  type = map
  default = {
    key1 = "value1"
    key2 = "value2"
  }
}

variable "inputname" {
  type = string
  description = "Set the name of the VPC"
}

resource "aws_vpc" "myvpc" {
  cidr_block = "10.0.0.0/16"

# Examples
  tags = {
    Name = var.vpcname
    Name = var.mylist[1]
    Name = var.mymap["Key1"]
    Name = var.inputname
  }
}

