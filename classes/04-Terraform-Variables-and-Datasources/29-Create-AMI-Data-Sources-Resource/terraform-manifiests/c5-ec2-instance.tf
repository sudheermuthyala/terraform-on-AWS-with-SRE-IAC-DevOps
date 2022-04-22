# resource aws_instance

resource "aws_instance" "Myec2" {
  ami           = data.aws_ami.amazonimage
  instance_type = "t3.micro"

  tags = {
    Name = "HelloWorld"
  }
}