resource "aws_route_table" "public1_route_table" {
    vpc_id = aws_vpc.my_vpc.id

    route {
        cidr_block = "0.0.0.0/0"
        gateway_id = aws_internet_gateway.my_igw.id
    }
    tags = {
      Name = "public1_subnet_cidr"
    }
}

resource "aws_route_table_association" "public1_route_association" {
    subnet_id = aws_subnet.public1_subnet.id
    route_table_id = aws_route_table.public1_route_table.id 
}



resource "aws_route_table" "public2_route_table" {
    vpc_id = aws_vpc.my_vpc.id

    route {
        cidr_block = "0.0.0.0/0"
        gateway_id = aws_internet_gateway.my_igw.id
    }
    tags = {
      Name = "public2_subnet_cidr"
    }
}

resource "aws_route_table_association" "public2_route_association" {
    subnet_id = aws_subnet.public2_subnet.id
    route_table_id = aws_route_table.public2_route_table.id 
}