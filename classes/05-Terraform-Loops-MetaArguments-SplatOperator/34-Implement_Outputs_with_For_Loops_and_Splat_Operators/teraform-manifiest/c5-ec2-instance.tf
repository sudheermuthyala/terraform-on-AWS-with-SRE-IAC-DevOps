resource "aws_instance" "web" {
  ami                       = data.aws_ami.my_rk_ami.id
  #instance_type             = var.instance_type
  #instance_type             = var.instance_type_list[0]
  instance_type = 
  key_name                  = var.key_name
  user_data                 = file("${path.module}/app1-install.sh")
  vpc_security_group_ids    =     [ aws_security_group.allow_ssh.id , aws_security_group.allow_web.id ]

  tags = {
    Name = "HelloWorld"
  }
}