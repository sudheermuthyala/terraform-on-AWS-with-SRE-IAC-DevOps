# resource aws_instance

resource "aws_instance" "Myec2" {
  ami           = data.aws_ami.amazonimage
  instance_type = var.instance_type
  key_name      = var.key_pair
  vpc_security_group_ids = 

  tags = {
    Name = "HelloWorld"
  }
}