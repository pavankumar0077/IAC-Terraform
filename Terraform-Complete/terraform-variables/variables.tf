variable "ami-id" {
    description = "ami id for uat it defines ami id"
    type        = string
    default = "ami-0e53db6fd757e38c7"
}

variable "instance_type" {
    description = "instance type for uat it defines instance type"
    type        = string
    default = "t2.micro"
}

variable "aws_region" {
    description = "region for uat it defines region"
    type        = string
    default = "ap-south-1"
}

variable "aws-instance-count" {
    description = "instance count for uat it defines instance count"
    type        = number
    default = 3
}