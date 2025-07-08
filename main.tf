resource "aws_vpc" "network" {
  cidr_block = var.vpc_cidr
  tags = {
    Name = "my-vpc"
  }
}

resource "aws_subnet" "subnet_overall_details" {
  count             = length(var.subnet_overall_details)
  vpc_id            = aws_vpc.network.id
  cidr_block        = var.subnet_overall_details[count.index].cidr
  availability_zone = var.subnet_overall_details[count.index].az
  tags = {
    Name = var.subnet_overall_details[count.index].name
  }
}