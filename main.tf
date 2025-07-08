resource "aws_vpc" "network" {
  cidr_block = var.vpc_cidr
  tags = {
    Name = "my-vpc"
  }
}

resource "aws_subnet" "subnets" {
  count = length(var.subnet_cidrs)
  vpc_id            = aws_vpc.network.id
  cidr_block        = var.subnet_cidrs[count.index]
  availability_zone = var.subnet_azs[count.index]
  tags = {
    Name = var.subnet_name[count.index]
  }
}