
# ---------------------------------------------------------------------------------------------------------------------
# DEPLOY A EC2 INSTANCES
# ---------------------------------------------------------------------------------------------------------------------

resource "aws_instance" "wowcloud-simple" {
  # Ubuntu Server 18.10 (HVM), SSD Volume Type in eu-north-1
  ami = "ami-b9c54dc7"
  instance_type = "t3.medium"
  vpc_security_group_ids = ["${aws_security_group.WOWCLOUD-SIMPLE-SG.id}"]
  subnet_id = "${aws_subnet.WOWCLOUD-EC2.id}"
  key_name = "Kapel"

  associate_public_ip_address = true


  tags = {
    Name = "WOWCLOUD-simple"
  }


  root_block_device {
    volume_type           = "gp2"
    volume_size           = "50"
    delete_on_termination = true
  }

volume_tags = {
    Name = "wowcloud-simple"
  }
}
