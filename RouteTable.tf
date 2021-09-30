resource "aws_route_table" "Project_RT" {
  vpc_id = aws_vpc.Project_Vpc.id

  route{
      cidr_block = "0.0.0.0/0" // accept all traffic from internet gateway
      gateway_id = aws_internet_gateway.Project_GW.id
    }
    route {
    
      ipv6_cidr_block        = "::/0"
      gateway_id = aws_internet_gateway.Project_GW.id
    }
  

  tags = {
    Name = "Project_RT"
  }
}