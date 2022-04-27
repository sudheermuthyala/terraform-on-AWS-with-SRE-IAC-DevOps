resource "aws_instance" "myec2vm" {
  ami         =  data.aws_ami.amazonimage.id
  #instance_type = var.instance_type
  #instance_type = var.instance_type_list[1]
  instance_type = var.instance_type_map["prod"]
  key_name = var.key_name
  vpc_security_group_ids = [ aws_security_group.allow_ssh.id, aws_security_group ]

  

}