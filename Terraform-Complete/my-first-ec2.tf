# # Configure the AWS Provider
# provider "aws" {
#   profile = "pavan-aws-account" #This is configured using aws configure command
#   region = "ap-south-1"
# }


# resource "aws_instance" "my-first-ec2" {
#   ami           = "ami-0ad21ae1d0696ad58"
#   instance_type = "t2.micro"

#   tags = {
#     Name = "My-First-EC2-Using-TF"
#   }
# }