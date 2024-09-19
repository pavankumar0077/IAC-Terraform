variable "ami-id" {
  type        = string
  description = "ami id"
  default     = "ami-0ad21ae1d0696ad58"
}

variable "instance_type" {
  type    = string
  default = "t2.micro"
}

variable "aws-region" {
  type    = string
  default = "ap-south-1"
}

variable "package_name" {
  description = "Provide pkg that need to be installed with user_data"
  type        = string
  default     = "httpd"
}