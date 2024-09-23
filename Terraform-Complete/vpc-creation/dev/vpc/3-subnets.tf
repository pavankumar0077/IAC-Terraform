resource "aws_subnet" "private_ap_south_1a" {
  vpc_id            = aws_vpc.main.id
  cidr_block        = "10.0.0.0/19"
  availability_zone = "ap-south-1a"

  tags = {
    "Name"                            = "dev-private-ap-south-1a"
    "Kubernetes.io/role/internal-elb" = "1"
    "kubernetes.io/cluster/dev-demo"  = "owned"
  }
}

resource "aws_subnet" "private_ap_south_1b" {
  vpc_id            = aws_vpc.main.id
  cidr_block        = "10.0.0.0/19"
  availability_zone = "ap-south-1b"

  tags = {
    "Name"                            = "dev-private-ap-south-1a"
    "Kubernetes.io/role/internal-elb" = "1"
    "kubernetes.io/cluster/dev-demo"  = "owned"
  }
}

resource "aws_subnet" "public_ap_south_1a" {
  vpc_id                  = aws_vpc.main.id
  cidr_block              = "10.0.0.0/19"
  availability_zone       = "ap-south-1a"
  map_public_ip_on_launch = true

  tags = {
    "Name"                           = "dev-public-ap-south-1a"
    "Kubernetes.io/role/elb"         = "1"
    "kubernetes.io/cluster/dev-demo" = "owned"
  }
}

resource "aws_subnet" "public_ap_south_1b" {
  vpc_id                  = aws_vpc.main.id
  cidr_block              = "10.0.0.0/19"
  availability_zone       = "ap-south-1b"
  map_public_ip_on_launch = true

  tags = {
    "Name"                           = "dev-public-ap-south-1b"
    "Kubernetes.io/role/elb"         = "1"
    "kubernetes.io/cluster/dev-demo" = "owned"
  }
}