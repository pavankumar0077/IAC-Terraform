terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "5.67.0"
    }
  }
}

provider "aws" {
  region = "ap-south-1"
}

resource "aws_security_group" "nginx-sg" {
  name        = "nginx-sg"
  description = "Allow inbound traffic on port 80, 443, and SSH"
  vpc_id      = "vpc-0659e18f6d5599d66"

  ingress {
    from_port   = 80
    to_port     = 80
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }

  ingress {
    from_port   = 443
    to_port     = 443
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }

  ingress {
    from_port   = 22
    to_port     = 22
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"] # Restrict SSH access to your IP
  }

  egress {
    from_port   = 0
    to_port     = 0
    protocol    = "-1"
    cidr_blocks = ["0.0.0.0/0"]
  }

  tags = {
    Name = "nginx-sg"
  }
}

resource "aws_instance" "nginx-server" {
  ami                    = "ami-0e53db6fd757e38c7" # Use correct AMI for Amazon Linux 2023
  instance_type          = "t2.micro"
  vpc_security_group_ids = [aws_security_group.nginx-sg.id]

  user_data = <<EOF
  #!/bin/bash
  # Update the package manager and install Docker
  sudo dnf update -y
  sudo dnf install docker -y

  # Enable and start Docker
  sudo systemctl enable docker
  sudo systemctl start docker

  # Add ec2-user to the docker group (optional but recommended)
  sudo usermod -aG docker ec2-user

  # Run the Nginx container
  docker run -d --name nginx-server -p 80:80 nginx:alpine
  EOF

  tags = {
    Name = "Nginx-Server"
  }
}
