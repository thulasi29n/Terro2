resource "aws_instance" "Project_Ubuntu" {
    ami ="ami-09e67e426f25ce0d7"
    instance_type = "t3.micro"
    availability_zone = "us-east-1a"
    key_name="Terraform_US_E_1"
    network_interface {
        device_index=0
        network_interface_id=aws_network_interface.Project_NIC.id
    }
       tags = {
          Name="Project_Ubuntu_WebServer"
        } 

    user_data = <<EOF
                #!/bin/bash
                sudo apt update -y
                sudo apt install apache2 -y
                sudo systemctl start apache2
                sudo bash -c 'echo your frist web server > /var/www/html/index.html'
                EOF
                
}
// systemctl status apache2