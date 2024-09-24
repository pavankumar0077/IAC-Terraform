variable "dbname" {
  type = string
}

resource "aws_instance" "myec2db" {
  ami           = "ami-0522ab6e1ddcc7055"
  instance_type = "t2.micro"

  tags = {
    Name = var.dbname
  }
}