output "aws_instance_publicip" {
    description = "EC2instance public ip"
    value = aws_instance.Myec2.public_ip
  
}

output "aws_instance_dns" {
  description = "public dns"
  value = aws_instance.Myec2.pu
}