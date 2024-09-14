# resource "aws_security_group" "test-sg" {
#   name        = "test-sg"
#   description = "Allow inbound traffic on port 22 and 80"
#   vpc_id      = "vpc-0659e18f6d5599d66"

#   tags = {
#     "Name" = "test-sg"
#   }

#   ingress {
#     description = "Allow SSH"
#     from_port   = 22
#     to_port     = 22
#     protocol    = "tcp"
#     cidr_blocks = ["0.0.0.0/0"]

#   }

#   ingress {
#     description = "Allow HTTP"
#     from_port   = 80
#     to_port     = 80
#     protocol    = "tcp"
#     cidr_blocks = ["0.0.0.0/0"]

#   }


#   egress {
#     from_port   = 0
#     to_port     = 0
#     protocol    = "-1"
#     cidr_blocks = ["0.0.0.0/0"]
#   }

# }


# resource "aws_instance" "test-server" {
#   ami           = "ami-0522ab6e1ddcc7055"
#   instance_type = "t2.micro"

#   vpc_security_group_ids = [aws_security_group.test-sg.id]

#   tags = {
#     Name = "test-server"
#   }

# }

# resource "aws_eip" "lb" {
#   # instance = aws_instance.test-server.id
#   domain = "vpc"
#   # vpc = true

# }

# resource "aws_eip_association" "eip_assoc" {
#   instance_id   = aws_instance.test-server.id
#   allocation_id = aws_eip.lb.id

# }