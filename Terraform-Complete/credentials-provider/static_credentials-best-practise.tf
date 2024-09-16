terraform {
  required_version = "~> 1.1.4"
  required_providers {
    aws = {
      source = "hashicorp/aws"
      version = "5.67.0"
    }
  }
}

provider "aws" {
  # Configuration options
  region = "us-west-2"
  access_key = "xxx"
  secret_key = "xxxx"
}

resource "aws_instance" "test" {
    ami = "ami-xxxx"
    instance_type = "t2.micro"

    tags = {
      Name = Test-Server
    }
}