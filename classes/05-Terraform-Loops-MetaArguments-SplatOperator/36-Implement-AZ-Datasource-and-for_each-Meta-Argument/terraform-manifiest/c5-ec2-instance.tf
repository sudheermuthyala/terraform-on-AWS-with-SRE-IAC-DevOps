##  Data Source: aws_availability_zones
data "aws_availability_zones" "my_AZ_zones" {
  filter {
    name   = "opt-in-status"
    values = ["opt-in-not-required"]
  }
}
#  data.aws_availability_zones.my_AZ_zones.names            [this will provide the list values of AZ]
#  toset(data.aws_availability_zones.my_AZ_zones.names)     [this will convert to list values to set of values]

## Resource: aws_instance
resource "aws_instance" "myec2vm" {
  count       =   2
  ami         =  data.aws_ami.amazonimage.id
  #instance_type = var.instance_type
  #instance_type = var.instance_type_list[1]
  instance_type = var.instance_type_map["prod"]
  key_name = var.key_name
  vpc_security_group_ids = [ aws_security_group.allow_ssh.id, aws_security_group.allow_web.id ]
  user_data = file("${path.module}/app1-install.sh")
  ## Create EC2 Instance in All avillablity zone of a VPC
  for_each = toset(data.aws_availability_zones.my_AZ_zones.names)
  availability_zone = each.key
   
  #for_each = toset(data.aws_availability_zones.my_AZ_zones.names)
  tags = {
    Name  = "Myec2vmDemo_for_each-${each.value}"
  }
  

}