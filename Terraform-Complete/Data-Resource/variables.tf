variable "ami-id" {
    default = "ami-sdkfksdf"
    description = "This variable is used to define ami"
    type = string
}

variable "instance-type" {
  type = string
  default = "t2.micro"
}

variable "aws-region" {
  default = "ap-south-1"
  type = string
}

variable "aws-instance-count" {
  default = 2
  type = number
}