
# ---------------------------------------------------------------------------------------------------------------------
# DEPLOY A EC2 INSTANCES
# ---------------------------------------------------------------------------------------------------------------------

resource "aws_instance" "wowcloud-simple" {
  # Ubuntu Server 18.10 (HVM), SSD Volume Type in eu-north-1
  ami = "ami-b9c54dc7"
  instance_type = "t3.medium"
  vpc_security_group_ids = ["${aws_security_group.WOWCLOUD-SIMPLE-SG.id}"]
  subnet_id = "${aws_subnet.WOWCLOUD-EC2.id}"
  key_name = "wowcloud-key"

  associate_public_ip_address = true


  tags = {
    Name = "WOWCLOUD-simple"
  }


  root_block_device {
    volume_type           = "gp2"
    volume_size           = "50"
    delete_on_termination = true
  }

    provisioner "local-exec" {
        command = "sleep 120; ANSIBLE_HOST_KEY_CHECKING=False ansible-playbook -u ubuntu -i '${aws_instance.wowcloud-simple.public_ip},' -e 'env=docker' -e 'wowcloud_realmlist_address=${aws_instance.wowcloud-simple.public_ip}' ../ansible/main.yml"
        working_dir = "../ansible"
    }

volume_tags = {
    Name = "wowcloud-simple"
  }
}
