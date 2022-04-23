## Resource: aws_instance

resource "aws_instance" "web" {
  ami           = data.aws_ami.rkalluru-CO-7.id
  instance_type = var.insyance_type
  key_name      = var
  user_data     = file("${path.module}/app1-install.sh")
  vpc_security_group_ids = [ aws_security_group.allow_ssh.id , aws_security_group.allow_web.id]


  tags = {
    Name = "HelloWorld"
  }
}

