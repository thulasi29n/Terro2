resource "aws_vpc" "Project_Vpc" {
  cidr_block = "10.10.0.0/16" 
    tags = {
    Name = "Project_Vpc"
  }
}