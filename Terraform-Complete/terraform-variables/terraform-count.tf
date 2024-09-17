# This is manually duplicating now easy to instance creation

/**resource "aws_instance" "nginx-server-UAT" {
  ami                    = var.ami-id
  instance_type          = var.instance_type

  tags = {
    Name = "Nginx-Server-UAT"
  }
}

resource "aws_instance" "nginx-server-Pre-Prod" {
  ami                    = var.ami-id
  instance_type          = var.instance_type

  tags = {
    Name = "Nginx-Server-Pre-Prod"
  }
}

resource "aws_instance" "nginx-server-Prod" {
  ami                    = var.ami-id
  instance_type          = var.instance_type

  tags = {
    Name = "Nginx-Server-Prod"
  }
}
**/


# This is where we are using COUNT to create EC2 instance
resource "aws_instance" "server" {
  count = var.aws-instance-count

  ami           = var.ami-id
  instance_type = var.instance_type

  tags = {
    Name = "Nginx-Server ${count.index}"
  }
}
