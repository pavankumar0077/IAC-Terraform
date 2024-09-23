resource "aws_eip" "nat" {
  vpc = true

  tags = {
    Name = "dev-nat"
  }
}