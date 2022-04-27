resource "aws_instance" "myec2vm" {
  ami         =  data.aws_ami.amazonimage.id
  
}