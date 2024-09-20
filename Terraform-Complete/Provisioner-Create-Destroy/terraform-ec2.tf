terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "5.67.0"
    }
  }
}

provider "aws" {
  region = var.aws-region
}

data "aws_ami" "amazonami" {

  most_recent = true
  owners      = ["amazon"]
  filter {
    name   = "name"
    values = ["amzn2-ami-kernel-*-gp2"]
  }
  filter {
    name   = "root-device-type"
    values = ["ebs"]
  }
  filter {
    name   = "virtualization-type"
    values = ["hvm"]
  }
  filter {
    name   = "architecture"
    values = ["x86_64"]
  }
}


resource "aws_security_group" "allowing_ssh" {
  name = "allowing_ssh"
  description = "Allowing SSH"

  ingress {
    description = "Inbound Traffic"
    to_port = 22
    from_port = 22
    protocol = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }

    egress {
    from_port   = 0
    to_port     = 0
    protocol    = "-1"
    cidr_blocks = ["0.0.0.0/0"]
  }

}

resource "aws_instance" "my-ec2" {
  ami           = data.aws_ami.amazonami.id
  instance_type = var.instance-type
  vpc_security_group_ids = aws_security_group.allowing_ssh.id
  key_name      = "demo"

  tags = {
    Name = "My-Server"
  }

  connection {
    type        = "ssh"
    user        = "ec2-user"
    private_key = file("./demo.pem")
    host        = self.public_ip
  }

  # provisioner "local-exec" {
  #   command = "echo ${aws_instance.my-ec2.private_ip} > private_ip.txt"
  # }

# Creation time provisioner
  provisioner "remote-exec" {
    inline = [
      "sudo yum -y install nano"
    ]
  }
}

