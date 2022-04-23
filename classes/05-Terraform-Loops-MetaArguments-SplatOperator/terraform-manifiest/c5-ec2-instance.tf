## Resource: aws_instance

resource "aws_instance" "web" {
  ami           = data.aws_ami.rkalluru-CO-7.id
  instance_type = var.insyance_type
  user_data     = file("${path.module}/app1-install.sh")
  vpc_security_group_ids = []


  tags = {
    Name = "HelloWorld"
  }
}

