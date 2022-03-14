## Input varibles


## AWS Reagion
variable "aws_reagion" {
  description = "Reagion in which AWS Resources to be created"
  type = string
  default = "us-east-1"
}

## AWS ec2-Instance Type
variable "instance_type" {
  description = "EC2-instance Type"
  type =  string
  default = "t3.micro"
}

## AWS ec2 instance Key Pair
variable "instance_keypair" {
  description = "AWS EC2 key pair that need to associated with EC2 Instance"
  type = string
  default = "terraform-k"
}
