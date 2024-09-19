variable "ami-id" {
  default     = "ami-sdkfksdf"
  description = "This variable is used to define ami"
  type        = string
}

variable "instance_type" {
  type = map
  default = {
    default = "t2.nano"
    dev = "t2.micro"
    prod = "t2.large"
  }
}

variable "aws-region" {
  default = "ap-south-1"
  type    = string
}

variable "aws-instance-count" {
  default = 2
  type    = number
}