region                  = "ap-south-1"
vpc_id                  = "vpc-xxxx"
ami                     = "ami-xxxx"
instance_type           = "t2.micro"
aws_security_group_name = "testing-sg"

ingress_rules = [
  {
    description = "Allow SSH"
    from_port   = 22
    to_port     = 22
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  },
  {
    description = "Allow HTTP"
    from_port   = 80
    to_port     = 80
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }
]