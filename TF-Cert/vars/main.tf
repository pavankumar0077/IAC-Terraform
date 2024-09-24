provider "aws" {
  region = "ap-south-1"
}

variable "environment" {
  type = string
}

resource "aws_instance" "myec2" {
  ami           = "ami-0522ab6e1ddcc7055"
  instance_type = "t2.micro"
  count = var.environment == "prod" ? 1 : 0

  tags = {
    Name = "Web Server"
  }

}