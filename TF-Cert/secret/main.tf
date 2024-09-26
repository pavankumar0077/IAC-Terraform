provider "aws" {
  region = "ap-south-1"
}

provider "valut" {

}

variable "vpcname" {
  type = string
}


resource "aws_vpc" "myvpc" {
  cidr_block = "10.0.0.0/16"

  tags = {
    Name = var.vpcname
  }
}