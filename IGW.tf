resource "aws_internet_gateway" "Project_GW" {
  vpc_id = aws_vpc.Project_Vpc.id

  tags = {
    Name = "Project_Gateway"
  }
}