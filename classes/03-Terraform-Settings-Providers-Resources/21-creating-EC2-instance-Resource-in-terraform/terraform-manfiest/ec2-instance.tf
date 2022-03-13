## resource 
resource "aws_instance" "myec2instane" {
 ami                    = "ami-0760b951ddb0c20c9"
 instance_type          = "t2.micro"
 user_data =  file("${path.module}/app1-install.sh")
tags = 


}