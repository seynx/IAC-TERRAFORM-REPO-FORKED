# Create a VPC
resource "aws_vpc" "example" {
  cidr_block = var.cidr_block
}

resource "aws_instance" "web" {
  ami           = "ami-0022f774911c1d690"
  instance_type = "t3.micro"
  
  tags = {
    Name = "Demo"
  }
}