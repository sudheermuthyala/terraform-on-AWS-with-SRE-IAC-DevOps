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
  type = 
}