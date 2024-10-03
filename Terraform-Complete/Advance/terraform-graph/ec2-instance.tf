resource "aws_instance" "my-ec2" {
  ami           = var.ami-id
  instance_type = var.instance_type

  user_data = file("apache-install.sh")

  tags = {
    "Name" = "My-EC2"
  }
}
