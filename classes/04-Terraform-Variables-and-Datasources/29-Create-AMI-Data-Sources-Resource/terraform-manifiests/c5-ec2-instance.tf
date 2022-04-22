# resource aws_instance

resource "aws_instance" "Myec2" {
  ami           = data.aws_ami.amazonimage
  instance_type = var.instance_type
  key_name

  tags = {
    Name = "HelloWorld"
  }
}