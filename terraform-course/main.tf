#Create ec2 instances

#access_key = ""
#secret_key = ""

resource "aws_instance" "web" {
  ami = "ami-id"
  instance_type = "t2.micro"

  tags = {
    Name = "test-ec2"
  }
}

#github
resource "github_repository" "example" {
  name        = "exatestmple"
  description = "This repo is created suing terrafomr"

  visibility = "public"
}

resource "aws_instance" "web1" {
  ami = "ami-0ad21ae1d0696ad58"
  instance_type = "t2.micro"
  provider = aws.west

  tags = {
    Name = "test-ec2"
  }
}