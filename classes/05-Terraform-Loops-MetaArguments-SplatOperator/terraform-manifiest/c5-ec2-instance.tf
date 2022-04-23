## Resource: aws_instance

resource "aws_instance" "web" {
  ami           = data.aws_ami.rkalluru-CO-7.id
  instance_type = var.insyance_type
  user_data = 


  tags = {
    Name = "HelloWorld"
  }
}

