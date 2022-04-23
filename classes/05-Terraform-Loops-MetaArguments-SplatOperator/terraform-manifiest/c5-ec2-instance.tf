## Resource: aws_instance

resource "aws_instance" "web" {
  ami           = data.aws_ami.rkalluru-CO-7.id
  instance_type = "t3.micro"

  tags = {
    Name = "HelloWorld"
  }
}

