resource "aws_instance" "web" {
  ami           = data.aws_ami.my_rk_ami.id
  instance_type = var.instance_type
  key_name      = var.key_name
  user_data     = file()

  tags = {
    Name = "HelloWorld"
  }
}