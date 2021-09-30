resource "aws_subnet" "Project_Subnet" {
  vpc_id     = aws_vpc.Project_Vpc.id
  cidr_block = var.subnet_prefix//"10.10.1.0/24"
  availability_zone = "us-east-1a"

  tags = {
    Name = "Project_Subnet"
  }
}

variable "subnet_prefix" { // value is not given... terraform will ask for value when apply
  description ="cidr block of the subnet"
  #default=10.10.60.0/24
  #type=string

}