data "aws_ami" "example" {
  most_recent      = true
  owners           = ["amazon"]

  filter {
    name   = "name"
    values = ["myami-*"]
  }

  filter {
    name   = "root-device-type"
    values = ["ebs"]
  }

  filter {
    name   = "virtualization-type"
    values = ["hvm"]
  }
  
  filter {
    name   = "Architecture-type"
    values = ["x86_64"]
  }

}


#Centos-7-DevOps-Practice	


amzn2-ami-hvm-*gp2	



