provider "aws" {
  region = "ap-south-1"
}

provider "aws" {
  region = "ap-south-2"
  alias = "hyd"
}

provider "vault" {
  
}

# resource "valut_generic_secret" "mypassword" {
  
# }



resource "aws_vpc" "myvpc" {
  cidr_block = "10.0.0.0/16"
}

resource "aws_vpc" "hydvpc" {
  cidr_block = "10.0.0.0/16"
  provider = aws.hyd
}


