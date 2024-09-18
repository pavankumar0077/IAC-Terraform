terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "5.67.0"
    }
  }
}

provider "aws" {
  region = var.aws-region
}

# resource "time_sleep" "wait_time_in_sec" {
#   create_duration = "100s"
# }

data "aws_ami" "amazonami" {

  most_recent = true
  owners      = ["amazon"]
  filter {
    name   = "name"
    values = ["amzn2-ami-kernel-*-gp2"]
  }
  filter {
    name   = "root-device-type"
    values = ["ebs"]
  }
  filter {
    name   = "virtualization-type"
    values = ["hvm"]
  }
  filter {
    name   = "architecture"
    values = ["x86_64"]
  }
}

resource "aws_instance" "my-ec2" {
  ami           = data.aws_ami.amazonami.id
  instance_type = var.instance-type

  tags = {
    Name = "My-Server"
  }
}

terraform {
  backend "s3" {
    bucket         = "tf-state-management-007"
    key            = "network/terraform.tfstate"
    region         = "ap-south-1"
    dynamodb_table = "terraform-state-locking"
  }
}