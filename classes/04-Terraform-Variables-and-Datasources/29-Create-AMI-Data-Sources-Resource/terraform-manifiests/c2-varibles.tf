variable "aws_region" {
    description = "region"
    type = string
    default = "us-east-1"
  
}

variable "instance_type" {
  description = "instance type"
  type = string
  default = "t3.medium"
}

variable "key_pair" {
  description = "keypair"
  type = string
  default = 
}