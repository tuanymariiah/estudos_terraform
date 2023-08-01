# resource "aws_vpc" "main" {
#   cidr_block =  "10.0.0.0/16"
# }

# resource "aws_subnet" "subnet_rds_1" {
#   vpc_id     = aws_vpc.main.id
#   cidr_block = "0.0.0.0/0"
#   availability_zone = "us-east-1a"

#   tags = {
#     Name = "My Subnet 1"
#   }
# }

# resource "aws_subnet" "subnet_rds_2" {
#   vpc_id     = aws_vpc.main.id
#   cidr_block = "0.0.0.0/0"
#   availability_zone = "us-east-1b"

#   tags = {
#     Name = "My Subnet 2"
#   }
# }

