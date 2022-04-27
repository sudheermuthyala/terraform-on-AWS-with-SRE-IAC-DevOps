resource "aws_instance" "myec2vm" {
  ami         =  data.aws_ami.amazonimage.id
  #instance_type = var.instance_type
  instance_type = var.int

}