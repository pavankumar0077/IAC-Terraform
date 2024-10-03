provider "aws" {
  region = "ap-south-1"
}

provider "aws" {
  region = "us-east-1"
  alias = "us-east-region"
}

resource "aws_security_group" "prod_sg" {
  name = "prod_sg_firewall"
}

resource "aws_security_group" "dev_sg" {
  name = "dev_sg_firewall"
  provider = aws.us-east-region
}

