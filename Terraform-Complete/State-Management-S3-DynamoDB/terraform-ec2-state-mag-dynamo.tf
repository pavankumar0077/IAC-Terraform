terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "5.67.0"
    }
  }
  
  backend "s3" {
    bucket         = aws_s3_bucket.tf_state_bucket.bucket
    key            = "network/terraform.tfstate"
    region         = var.aws-region
    dynamodb_table = aws_dynamodb_table.tf_state_lock.name
  }
}

provider "aws" {
  region = var.aws-region
}

# Data source to get the most recent Amazon Linux AMI
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

# S3 bucket for storing Terraform state
resource "aws_s3_bucket" "tf_state_bucket" {
  bucket = "tf-state-management-007"

  versioning {
    enabled = true
  }

  server_side_encryption_configuration {
    rule {
      apply_server_side_encryption_by_default {
        sse_algorithm = "AES256"
      }
    }
  }

  tags = {
    Name        = "terraform-state-bucket"
    Environment = "production"
  }
}

# DynamoDB table for Terraform state locking
resource "aws_dynamodb_table" "tf_state_lock" {
  name         = "terraform-state-locking"
  billing_mode = "PAY_PER_REQUEST"
  hash_key     = "LockID"

  attribute {
    name = "LockID"
    type = "S"
  }

  tags = {
    Name        = "terraform-state-locking"
    Environment = "production"
  }
}

# EC2 instance
resource "aws_instance" "my-ec2" {
  ami           = data.aws_ami.amazonami.id
  instance_type = var.instance-type

  tags = {
    Name = "My-Server"
  }
}
