region                  = "us-east-1"
vpc_id                  = "vpc-yyyyyyyy"
ami                     = "ami-yyyyyy"
instance_type           = "t3.medium"
aws_security_group_name = "production-sg"

ingress_rules = [
  {
    description = "Allow SSH"
    from_port   = 22
    to_port     = 22
    protocol    = "tcp"
    cidr_blocks = ["10.0.0.0/16"]
  },
  {
    description = "Allow HTTPS"
    from_port   = 443
    to_port     = 443
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }
]


# USAGE
# terraform apply -var-file="production.tfvars"
