resource "aws_route_table" "PUBLIC" {
  vpc_id = "${aws_vpc.WOWCLOUD-VPC.id}"

  route {
    cidr_block = "0.0.0.0/0"
    gateway_id = "${aws_internet_gateway.WOWCLOUD-InternetGateway.id}"
  }

  tags = {
    Name = "WOWCLOUD-public-route-table"
  }
}