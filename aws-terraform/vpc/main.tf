#VPC
resource "aws_vpc" "main" {
  cidr_block = var.vpc_cidr

  tags = {
    Name = var.vpc_name
  }
}

#private subnet
resource "aws_subnet" "private" {
  vpc_id     = aws_vpc.main.id
  cidr_block = var.private_subnet_cidr

  tags = {
    Name = "${var.vpc_name}-private-subnet"
  }
}

#route table
resource "aws_route_table" "private" {
  vpc_id = aws_vpc.main.id

  tags = {
  Name = "${var.vpc_name}-private-rt"
  }
}

#Associate a private subnet with a route table
resource "aws_route_table_association" "private" {
  subnet_id      = aws_subnet.private.id
  route_table_id = aws_route_table.private.id
}