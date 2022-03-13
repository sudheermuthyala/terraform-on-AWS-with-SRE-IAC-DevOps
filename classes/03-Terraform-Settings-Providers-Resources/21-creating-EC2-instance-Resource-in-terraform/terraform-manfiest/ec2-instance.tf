## resource 
resource "aws_instance" "myec2instane" {
 ami                    = "ami-0b90346fbb8e13c09"
 instance_type          = "t2.micro"
 user_data              =  file("app1-install.sh")
 user_data <<-EOF
 
 tags = {
   "Name" = "Ec2-Instance-Demo"
 }

}