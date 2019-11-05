resource "aws_subnet" "WOWCLOUD-RDS" {
  vpc_id     = "${aws_vpc.WOWCLOUD-VPC.id}"
  cidr_block = "10.0.1.0/28"
  availability_zone = "${var.region}a"
  map_public_ip_on_launch = false

  tags = {
    Name = "WOWCLOUD-RDS"
  }
}

resource "aws_subnet" "WOWCLOUD-EC2" {
  vpc_id     = "${aws_vpc.WOWCLOUD-VPC.id}"
  cidr_block = "10.0.1.32/28"
  availability_zone = "${var.region}a"
  map_public_ip_on_launch = false

  tags = {
    Name = "WOWCLOUD-EC2"
  }
}

resource "aws_subnet" "WOWCLOUD-BASTION" {
  vpc_id     = "${aws_vpc.WOWCLOUD-VPC.id}"
  cidr_block = "10.0.1.16/28"
  availability_zone = "${var.region}a"
  map_public_ip_on_launch = true

  tags = {
    Name = "WOWCLOUD-BASTION"
  }
}
