output "aws_instance_publicip" {
    description = "EC2instance public ip"
    value = aws_instance.Myec2.public_ip
  
}