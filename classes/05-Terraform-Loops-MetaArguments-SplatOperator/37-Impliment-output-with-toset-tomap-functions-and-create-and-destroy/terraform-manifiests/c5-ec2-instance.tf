data "aws_availability_zones" "my_AZ_zones" {
  filter {
    name   = "opt-in-status"
    values = ["opt-in-not-required"]
  }
}


resource "aws_instance" "myec2vm" {
  ami                       = data.aws_ami.amazonimage
  #instance_type             = var.instance_type
  #instance_type             = var.instance_type_list[1]
  instance_type             = var.instance_type_map["prod"] 
  key_name                  = var.key_name
  vpc_security_group_ids    = [ aws_security_group.allow_ssh.id,aws_security_group.allow_web.id ]
  user_data                 = file("${path.module}/app1-install.sh")
  for_each                  = toset(data.aws_availability_zones.my_AZ_zones.names)
  availability_zone         = each.key

    tags {
        Name = "my_ec2Demo-${each.value}"
    }

}