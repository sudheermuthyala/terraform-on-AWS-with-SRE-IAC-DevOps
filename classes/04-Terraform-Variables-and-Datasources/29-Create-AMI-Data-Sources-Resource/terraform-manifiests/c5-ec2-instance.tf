# resource aws_instance

resource "aws_instance" "Myec2" {
  ami           = data.aws_ami.amazonimage
  instance_type = var.instance_type
  key_name      = var.instance_key_pair
  user_data     
  vpc_security_group_ids = [ aws_security_group.allow_ssh.id, aws_security_group.allow_web.id ]

  tags = {
    Name = "HelloWorld"
  }
}