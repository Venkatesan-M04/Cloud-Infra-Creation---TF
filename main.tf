resource "aws_vpc" "network" {
  cidr_block = "10.100.0.0/16"
  tags = {
    Name = "my-vpc"
  }
}

resource "aws_subnet" "web1" {
  vpc_id            = aws_vpc.network.id
  cidr_block        = "10.100.0.0/24"
  availability_zone = "us-east-1a"
  tags = {
    Name = "web-1"
  }
}

resource "aws_subnet" "web2" {
  vpc_id            = aws_vpc.network.id
  cidr_block        = "10.100.1.0/24"
  availability_zone = "us-east-1b"
  tags = {
    Name = "web-2"
  }
}

resource "aws_subnet" "db1" {
  vpc_id            = aws_vpc.network.id
  cidr_block        = "10.100.2.0/24"
  availability_zone = "us-east-1a"
  tags = {
    Name = "db-1"
  }
}

resource "aws_subnet" "db2" {
  vpc_id            = aws_vpc.network.id
  cidr_block        = "10.100.3.0/24"
  availability_zone = "us-east-1b"
  tags = {
    Name = "db-2"
  }
}