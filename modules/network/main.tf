# provider "aws" {
#     region = "ap-south-1"
# }

# resource "aws_vpc" "main" {
#     cidr_block           = "10.0.0.0/24"
#     enable_dns_support   = true
#     enable_dns_hostnames = true
#     tags = {
#         Name = "main-vpc"
#     }
# }

# resource "aws_subnet" "subnet_vm" {
#     vpc_id                  = aws_vpc.main.id
#     cidr_block              = "10.0.1.0/24"
#     availability_zone       = "ap-south-1a"
#     map_public_ip_on_launch = true
#     tags = {
#         Name = "subnet-1"
#     }
# }

# resource "aws_subnet" "subnet_2" {
#     vpc_id                  = aws_vpc.main.id
#     cidr_block              = "10.0.2.0/24"
#     availability_zone       = "ap-south-1b"
#     map_public_ip_on_launch = true
#     tags = {
#         Name = "subnet-2"
#     }
# }