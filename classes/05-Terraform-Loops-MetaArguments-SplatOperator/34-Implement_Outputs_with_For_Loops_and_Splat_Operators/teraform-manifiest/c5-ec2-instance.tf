resource "aws_instance" "myec2vm" {
  ami                       = data.aws_ami.amazonimage.id
  instance_type             = var.instance_type
  #instance_type             = var.instance_type_list[1]
  #instance_type             =  var.instance_type_map["prod"]
  key_name                  = var.key_name
  user_data                 = file("${path.module}/app1-install.sh")
  vpc_security_group_ids    = [ aws_security_group.allow_ssh.id , aws_security_group.allow_web.id ]
  count = 2


 # tags = {
 #   Name = "Demo-${count.index}"
 # }
}