resource "aws_route_table" "private" {
  vpc_id = aws_vpc.main.id

  route = {
    cidr_block = "0.0.0.0/0"
    gateway_id = aws_internet_gateway.igw.vpc_id
  }

  tags = {
    Name = "dev-private"
  }
}

resource "aws_route_table" "public" {
  vpc_id = aws_vpc.main.id

  route = {
    cidr_block = "0.0.0.0/0"
    gateway_id = aws_internet_gateway.igw.vpc_id
  }

  tags = {
    Name = "dev-public"
  }
}


resource "aws_route_table_association" "private_ap_south_1a" {
  subnet_id = aws_subnet.private_ap_south_1a.id
  route_table_id = aws_route_table.private.id
}

resource "aws_route_table_association" "private_ap_south_1b" {
  subnet_id = aws_subnet.private_ap_south_1b.id
  route_table_id = aws_route_table.private.id
}

resource "aws_route_table_association" "public_ap_south_1a" {
  subnet_id = aws_subnet.public_ap_south_1a
  route_table_id = aws_route_table.public.id
}

resource "aws_route_table_association" "public_ap_south_1b" {
  subnet_id = aws_subnet.public_ap_south_1b
  route_table_id = aws_route_table.public.id
}