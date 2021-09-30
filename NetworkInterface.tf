resource "aws_network_interface" "Project_NIC" {
  subnet_id       = aws_subnet.Project_Subnet.id
  private_ips     = ["10.10.1.50","10.10.1.51"]
  security_groups = [aws_security_group.Project_SG.id]

/*  attachment {
    instance     = aws_instance.test.id
    device_index = 1
  } */  //Not Required
}