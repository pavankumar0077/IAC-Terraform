provider "aws" {
  region = "ap-south-1"
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

# EXPORT ENV VARIABLES
# export TF_VAR_vpcname=envvpc
# The name vpcname is passed when we are called terraform plan or apply

# We can set as CLI Variables as well
# terraform plan -var="vpcname=cliname"

