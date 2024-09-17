resource "aws_instance" "nginx-server-Prod" {
  count = var.aws-instance-count

  ami                    = var.ami-id
  instance_type          = var.instance_type["dev"]

  tags = {
    Name = "Nginx-Server-Prod"
  }
}
