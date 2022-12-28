resource "aws_subnet" "private_subnet1" {
  vpc_id = module.vpc-eks.vpc_id
  cidr_block = var.PrivSub1CIDR
  availability_zone = var.ZONE1
  tags = {
    Name = "private_subnet1"
  }
}

resource "aws_subnet" "private_subnet2" {
  vpc_id = module.vpc-eks.vpc_id
  cidr_block = var.PrivSub2CIDR
  availability_zone = var.ZONE2
  tags = {
    Name = "private_subnet2"
  }
}

resource "aws_subnet" "private_subnet3" {
  vpc_id = module.vpc-eks.vpc_id
  cidr_block = var.PrivSub3CIDR
  availability_zone = var.ZONE3
  tags = {
    Name = "private_subnet3"
  }
}

resource "aws_subnet" "public_subnet1" {
  vpc_id = module.vpc-eks.vpc_id
  cidr_block = var.PubSub1CIDR
  availability_zone = var.ZONE1
  tags = {
    Name = "public_subnet1"
  }
}

resource "aws_subnet" "public_subnet2" {
  vpc_id = module.vpc-eks.vpc_id
  cidr_block = var.PubSub2CIDR
  availability_zone = var.ZONE2
  tags = {
    Name = "public_subnet2"
  }
}

resource "aws_subnet" "public_subnet3" {
  vpc_id = module.vpc-eks.vpc_id
  cidr_block = var.PubSub3CIDR
  availability_zone = var.ZONE3
  tags = {
    Name = "public_subnet3"
  }
}