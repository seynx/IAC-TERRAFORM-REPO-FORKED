# Create a VPC
resource "aws_vpc" "example" {
  cidr_block = var.cidr_block
}

# Public Subnet
resource "aws_subnet" "public_subnet" {
  vpc_id     = local.vpc_id
  cidr_block = "10.0.0.0/24"
  
  tags = {
    "Name" = "public_subnet"
  }
}

# Private Subnet
resource "aws_subnet" "private_subnet" {
  vpc_id            = local.vpc_id
  cidr_block        = "10.0.1.0/24"

  tags = {
    "Name" = "private_subnet"
  }
  
}

resource "aws_instance" "web" {
  ami           = "ami-0022f774911c1d690"
  instance_type = "t3.micro"
  subnet_id = aws_subnet.public_subnet.id
  
  tags = {
    Name = "Demo"
  }
}