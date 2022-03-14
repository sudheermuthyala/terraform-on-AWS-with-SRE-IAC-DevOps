## Input varibles
## AWS Reagion
variable "aws_reagion" {
    description = "Reagion in which AWS Resources to be created"
    type = string
    default = "us-east-1"
  
}
## AWS ec2-Instance Type 
variable "instance_type" {
  
}

## AWS ec2 instance Key Pair
variable "instance_keypair" {
  
}
