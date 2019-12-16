resource "aws_subnet" "WOWCLOUD-EC2" {
  vpc_id     = "${aws_vpc.WOWCLOUD-VPC.id}"
  cidr_block = "10.0.1.32/28"
  availability_zone = "${var.region}a"
  map_public_ip_on_launch = false

  tags = {
    Name = "EC2-WoWCloud-simple"
  }
}
