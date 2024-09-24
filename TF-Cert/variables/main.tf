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

output "vpcid" {
  value =aws_vpc.myvpc.id # aws-resource-name . name that we have given for that resource . id or arn or other attributes
  # https://developer.hashicorp.com/terraform/language/values/variables

}

# The difference between list and tuple is for list we have to define one data type
# For TUPLE we can defined muliple datatypes 
variable "mytuple" {
  type = tuple([string,number,string])
  default = [ "cat", 1, "Dog" ]
}

variable "myobject" {
  type = object({
    name = string,
    port = list(number)
    default = {
      name = "TJ"
      port = [22, 25, 80]
    } 
  })
}

