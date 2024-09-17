provider "aws" {
  region = "ap-south-1"
}

resource "aws_instance" "ec2" {
    ami = ""
    instance_type = "t2.micro"
    availability_zone = "ap-south-1a"
    # availability_zone = "ap-south-1b"

    tags = {
      Name = "My-First-Instance"
    }

    lifecycle {
      ignore_changes = [ 
        tags,
       ]
    }
  
}