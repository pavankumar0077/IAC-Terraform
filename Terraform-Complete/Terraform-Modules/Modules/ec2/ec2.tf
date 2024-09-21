terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "5.68.0"
    }
  }
}

provider "aws" {
  region = var.aws_region
}

resource "aws_instance" "my-ec2" {
  ami           = var.ami-id
  # instance_type = var.instance_type
  instance_type = local.instance_type

  tags = {
    "Name" = "My-EC2"
  }
}

# When we use local so developers or DevOps engineer 
# who want to change the instance type is like strictly uh if they want to change also they may not override it so avoid it we are using this thing locals
locals {
  instance_type = "t2.micro"
}