variable "aws_region" {
    description = "aws region"
    type = string   
    default = "us-east-1"
}


# default instance type
variable "instance_type" {
  description = "instance_type"
  type = string
  default = "t3.small"
}