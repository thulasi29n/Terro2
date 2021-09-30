resource "aws_eip" "Project_EIP" {
  vpc                       = true
  network_interface         = aws_network_interface.Project_NIC.id
  associate_with_private_ip = "10.10.1.50"
  depends_on = [aws_internet_gateway.Project_GW]
}

output "server_public_ip" {
  value = aws_eip.Project_EIP.public_ip
  }