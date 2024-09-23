provider "aws" {
  region = "ap-south-1"
}

terraform {
  required_version = ">1.5"

  backend "local" {
    path = "dev/vpc/terraform.tfstate"
  }

  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "5.68.0"
    }
  }
}