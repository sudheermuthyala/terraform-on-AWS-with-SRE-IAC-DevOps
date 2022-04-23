## Data Source: aws_ami
data.aws_ami
data "aws_ami" "rkalluru-CO-7" {
  most_recent      = true
  owners           = ["amazon"]

  filter {
    name   = "name"
    values = ["Centos-7-DevOps-Practice"]
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
    name   = "architecture"
    values = ["x86_64"]
  }
}