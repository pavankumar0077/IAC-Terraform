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
