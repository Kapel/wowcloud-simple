# ---------------------------------------------------------------------------------------------------------------------
# CREATE THE SECURITY GROUP THAT'S APPLIED TO THE EC2 INSTANCE
# ---------------------------------------------------------------------------------------------------------------------


resource "aws_security_group" "WOWCLOUD-SIMPLE-SG" {
  name = "WOWCLOUD terraform WOWCLOUD-SIMPLE-SG"

  vpc_id = "${aws_vpc.WOWCLOUD-VPC.id}"

  #SSH port
  ingress {
    from_port = "${var.SSH}"
    to_port = "${var.SSH}"
    protocol = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }

  egress {
    from_port = 0
    to_port = 0
    protocol = "-1"
    cidr_blocks = ["0.0.0.0/0"]
  }


  # WORLDSERVER port
  ingress {
    from_port = "${var.WORLDSERVER}"
    to_port = "${var.WORLDSERVER}"
    protocol = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }
  egress {
    from_port = 0
    to_port = 0
    protocol = "-1"
    cidr_blocks = ["0.0.0.0/0"]
  }

# AUTHSERVER port
  ingress {
    from_port = "${var.AUTHSERVER}"
    to_port = "${var.AUTHSERVER}"
    protocol = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }

  egress {
    from_port = 0
    to_port = 0
    protocol = "-1"
    cidr_blocks = ["0.0.0.0/0"]
  }

  tags =  {
    Name = "SG-terraform-wowcloud-SIMPLE"
  }

}

