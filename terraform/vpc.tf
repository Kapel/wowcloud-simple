resource "aws_vpc" "WOWCLOUD-VPC" {
  cidr_block       = "10.0.1.0/24"

  tags = {
    Name = "VPC-WoWCloud-Simple"
  }
}
