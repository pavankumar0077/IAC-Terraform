# terraform {
#   required_version = "~> 1.9.0"
#   required_providers {
#     aws = {
#       source  = "hashicorp/aws"
#       version = "5.67.0"
#     }
#   }
# }

# provider "aws" {
#   # region = "ap-south-1"
#   region = var.aws_region
# }

# variable "ami-id" {
#     description = "ami id for uat it defines ami id"
#     type        = string
#     default = "ami-0e53db6fd757e38c7"
# }

# variable "instance_type" {
#     description = "instance type for uat it defines instance type"
#     type        = string
#     default = "t2.micro"
# }

# variable "aws_region" {
#     description = "region for uat it defines region"
#     type        = string
#     default = "ap-south-1"
# }


# # THIS CAN BE USED FOR DEVELOPMENT PURPOSE - NOT RECOMMENDED
# # EVERYTIME HARDCODING IS NOT GOOD AND WASTE OF TIME
# # USE VARIABLES INSTEAD

# # resource "aws_instance" "nginx-server-UAT" {
# #   ami                    = "ami-0e53db6fd757e38c7" # Use correct AMI for Amazon Linux 2023
# #   instance_type          = "t2.micro"

# #   tags = {
# #     Name = "Nginx-Server-UAT"
# #   }
# # }

# # resource "aws_instance" "nginx-server-Pre-Prod" {
# #   ami                    = "ami-0e53db6fd757e38c7" # Use correct AMI for Amazon Linux 2023
# #   instance_type          = "t2.micro"

# #   tags = {
# #     Name = "Nginx-Server-Pre-Prod"
# #   }
# # }

# # resource "aws_instance" "nginx-server-Prod" {
# #   ami                    = "ami-0e53db6fd757e38c7" # Use correct AMI for Amazon Linux 2023
# #   instance_type          = "t2.medium"

# #   tags = {
# #     Name = "Nginx-Server-Prod"
# #   }
# # }


# ## USING VARIABLES
# resource "aws_instance" "nginx-server-UAT" {
#   ami                    = var.ami-id
#   instance_type          = var.instance_type

#   tags = {
#     Name = "Nginx-Server-UAT"
#   }
# }

# resource "aws_instance" "nginx-server-Pre-Prod" {
#   ami                    = var.ami-id
#   instance_type          = var.instance_type

#   tags = {
#     Name = "Nginx-Server-Pre-Prod"
#   }
# }

# resource "aws_instance" "nginx-server-Prod" {
#   ami                    = var.ami-id
#   instance_type          = var.instance_type

#   tags = {
#     Name = "Nginx-Server-Prod"
#   }
# }
