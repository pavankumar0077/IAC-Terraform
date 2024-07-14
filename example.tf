# Learning HCL 

/*
This is 
multi
line
comment */

#Block
# https://developer.hashicorp.com/terraform/language/syntax/configuration
# Blocks are defined by their type and enclosed in curly braces {}.
# Examples, Provider block, resource block, variable block, output block
# Depending the block their might be paramters infront of it or not

block_type {
    attributes = value1
    attributes = value2
}

resource "aws_instance" 

#Attributes
Key = value1
key2 = value2


#Datatypes
String "pavan"
number 2
boolean true false

List 
list = ["item1", "item2", "item3"]

security_groups = ["sg-2132", "sg-234"]


Maps
variable "example_map" {
    type = map 
    default = { key1 = "value1", key2 = "value2", key3 = "value3"}
}

locals {
    my_map = { "name" = "Pavan", "age" = 30, "is_admin" = true}
}

locals.my_map["age"]

#Conditions
Different env have different aws_instance

resource "aws_instance" "server" {
    instance_type = var.environment == "developement" ? "t2.micro" : "t2.samll"
}

#Function
https://developer.hashicorp.com/terraform/language/functions
locals {
    name = "Pavan"
    fruits = ["apple", "banana", "mango"]
    message = "Pavan ${upper(local.name)}! I know you like ${join{",", local.fruits}}"
}

output:
Hello Pavan ! I know you like apple, banana, mango


#Resource Dependency
#Implicit dependency is automatically done by terraform
#Explicity dependency we have to do it. (depends on)

resource "aws_instance" "name" {
    vpc_security_group_ids = aws_security_group.mysg.id
}

resource "aws_security_group" "mysg" {
    #inboud rules
}
