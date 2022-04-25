resource "aws_instance" "web" {
  ami           = data.aws_ami.my_rk_ami.
  instance_type = "t3.micro"

  tags = {
    Name = "HelloWorld"
  }
}