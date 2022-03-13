## resource 
resource "aws_instance" "myec2instane" {
 ami                    = "ami-0e1d30f2c40c4c701"
 instance_type          = "t2.micro"
 #user_data              =  file("app1-install.sh")
 key_name               =  terraform-
 user_data = <<-EOF
#! /bin/bash
# Instance Identity Metadata Reference - https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/instance-identity-documents.html
sudo yum update -y
sudo yum install -y httpd
sudo systemctl enable httpd
sudo service httpd start  
sudo echo '<h1>Welcome to Muthyala Sudheer Naidu Terraform - APP-1</h1>' | sudo tee /var/www/html/index.html
sudo mkdir /var/www/html/app1
sudo echo '<!DOCTYPE html> <html> <body style="background-color:rgb(250, 210, 210);"> <h1>Muthyala Sudheer Naidu Terraform- APP-1</h1> <p>Terraform Demo</p> <p>Application Version: V1</p> </body></html>' | sudo tee /var/www/html/app1/index.html
sudo curl http://169.254.169.254/latest/dynamic/instance-identity/document -o /var/www/html/app1/metadata.html
EOF
 
 tags = {
   "Name" = "Ec2-Instance-Demo"
 }

}