variable "ami-id" {
  default     = "ami-0522ab6e1ddcc7055"
  description = "AMI ID"
  type        = string
}

variable "aws_region" {
  default     = "ap-south-1"
  description = "AWS REGION"
  type        = string
}

variable "instance_type" {
  default     = "t2.micro"
  description = "Instance type"
  type        = string
}