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

amzn2-ami-kernel-5.10-hvm-2.0.20220419.0-x86_64-gp2
Amazon Linux 2 Kernel 5.10 AMI 2.0.20220419.0 x86_64 HVM gp2


Amazon Linux 2 AMI 2.0.20220419.0 x86_64 HVM gp2



