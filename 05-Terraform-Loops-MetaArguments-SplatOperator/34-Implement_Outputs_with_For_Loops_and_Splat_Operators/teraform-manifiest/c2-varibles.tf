## aws_region
variable "aws_region" {
  description = "aws region launch the servers"
  type = string
  default = "us-east-1"
}

## instance_type

variable "instance_type" {
  description = "instance type"
  type = string
  default = "t2.micro"
}
## key_name

variable "key_name" {
  description = "instance key name"
  type = string
  default = "terraform-k"
}

## varibles for instance type  list

variable "instance_type_list" {
    description = "ec2 instance type list"
    type = list(string)
    default = [ "t3.micro", "t3.small", "t3.large" ]
  
}

## varibles for instance type  list
variable "instance_type_map" {
  description = "Ec2 instance type mape"
  type = map(string)
  default   = {
    "dev"   = "t3.small"
    "qa"    = "t3.micro"
    "prod"  = "t3.large"
  }
}