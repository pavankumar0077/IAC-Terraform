provider "aws" {
  region = "ap-south-1"
}


variable "ingress_rules" {
  type    = list(number)
  default = [25, 80, 443, 8080, 8443]
}

variable "egree_rules" {
  type    = list(number)
  default = [443, 8443]
}


resource "aws_instance" "myec2db" {
  ami             = "ami-0522ab6e1ddcc7055"
  instance_type   = "t2.micro"
  security_groups = [aws_security_group.web_traffic.name]

  tags = {
    Name = "Web Server"
  }
}

resource "aws_security_group" "web_traffic" {
  name = "Secure server"
  dynamic "ingress" {
    iterator = port
    for_each = var.ingress_rules
    content {
      from_port   = port.value
      to_port     = port.value
      protocol    = "TCP"
      cidr_blocks = ["0.0.0.0/0"]
    }
  }

  dynamic "egress" {
    iterator = port
    for_each = var.egree_rules
    content {
      from_port   = port.value
      to_port     = port.value
      protocol    = "TCP"
      cidr_blocks = ["0.0.0.0/0"]
    }
  }

}
