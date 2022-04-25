data "aws_ami" "amazonimage" {
  most_recent      = true
  owners           = ["aws-marketplace"]

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