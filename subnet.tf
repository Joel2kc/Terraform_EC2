resource "aws_subnet" "public-subnet" {
  vpc_id     = aws_vpc.terraform-vpc.id
  cidr_block = "10.0.1.0/24"
  map_public_ip_on_launch = true

  tags = {
    Name = var.public_subnet_name
  }
}
