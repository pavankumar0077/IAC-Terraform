provider "aws" {
  region = var.aws-region
}


resource "aws_instance" "Server" {
  ami           = var.ami-id
  instance_type = var.instance_type
  user_data     = templatefile("user_data.tmpl", { package_name = var.package_name })

  tags = {
    "Name" = "Terraform-functions"
  }
}
