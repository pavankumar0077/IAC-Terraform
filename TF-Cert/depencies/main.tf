provider "aws" {
  region = "ap-south-1"
}

resource "aws_instance" "myec2" {
  ami           = "ami-0522ab6e1ddcc7055"
  instance_type = "t2.micro"

  tags = {
    Name = "Web Server"
  }

  # We need our DB server should be spin come first for the web server to serve application successfully, So we are using depends_on DB server
  # Depends_On will take multple instances
  depends_on = [aws_instance.myec2db]
}


resource "aws_instance" "myec2db" {
  ami           = "ami-0522ab6e1ddcc7055"
  instance_type = "t2.micro"

  tags = {
    Name = "DB Server"
  }
}


# Data source is where terraform will query out aws they do api request and get the information 
data "aws_instance" "dbsearch" {
  filter {
    name = "tag:Name"
    values = ["DB Server"]
  }
}

output "dbservers" {
  value = data.aws_instance.dbsearch.availability_zone
}
