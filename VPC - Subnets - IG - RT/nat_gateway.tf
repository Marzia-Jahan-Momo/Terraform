# Need elastic IP, skipped now.

# resource "aws_eip" "nat_eip" {
#   vpc = true

#   tags = {
#     Name = "nat_eip"
#   }
# }

# resource "aws_nat_gateway" "my_nat" {
#   allocation_id = aws_eip.nat_eip.id
#   subnet_id     = aws_subnet.public1_subnet.id

#   tags = {
#     Name = "my_nat"
#   }
# }
