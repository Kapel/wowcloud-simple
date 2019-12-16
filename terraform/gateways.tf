resource "aws_internet_gateway" "WOWCLOUD-InternetGateway" {
  vpc_id = "${aws_vpc.WOWCLOUD-VPC.id}"

  tags = {
    Name = "WoWCloud-InternetGateway"
  }
}
