#Create ec2 instances

#access_key = ""
#secret_key = ""

# resource with variables
resource "aws_instance" "web" {
  ami = var.os
  instance_type = var.size

  tags = {
    Name = var.name
  }
}

#github resource 
# resource "github_repository" "example" {
#   name        = "exatestmple"
#   description = "This repo is created suing terrafomr"

#   visibility = "public"
# }

# Resource with hard-corded values
# Here provider = aws.west is nothing but a alias, We should not mention same provider multiple times in main.tf file
# Use we can using like this as alias, Senario : In the same aws account we have to provision a server in different region at that time we have to use this,
# resource "aws_instance" "web1" {
#   ami = "ami-id"
#   instance_type = "t2.micro"
#   provider = aws.west

#   tags = {
#     Name = "test-ec2"
#   }
# }

# The below varibale declaration is called as variable block declaration.
# This will be in seperate file
# variable "os" {
#   type = string
#   default = "ami-0ad21ae1d0696ad58"
#   description = "This is my ami ID"
#   #sensitive = true #Sensitive information hidden in the UI, But we make it sensitive we can see in the state file 
# }

# variable "size" {
#   default = "t2.micro"
# }

# variable "name" {
#   default = "TerraformEC2"
# }


resource "aws_s3_bucket" "bucket" {
  bucket = var.bucket_name
}

resource "aws_iam_user" "my_user" {
  name = "${var.username}-user"
}

output "Ipadress" {
  value = aws_instance.web.public_ip
}

output "DNS" {
  value = aws_instance.web.public_dns
}

output "PrivateIp" {
  value = aws_instance.web.private_ip
}