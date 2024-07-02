resource "aws_subnet" "public1_subnet" {
    vpc_id = aws_vpc.my_vpc.id
    cidr_block = var.public1_subnet_cidr
    map_public_ip_on_launch = true

    tags = {
      Name = "my_public_subnet"
    } 
}

resource "aws_subnet" "public2_subnet" {
    vpc_id = aws_vpc.my_vpc.id
    cidr_block = var.public2_subnet_cidr
    map_public_ip_on_launch = true

    tags = {
      Name = "public2_subnet"
    } 
  
}