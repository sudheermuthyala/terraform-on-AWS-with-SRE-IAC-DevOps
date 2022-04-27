variable "aws_region" {
    description = "aws region"
    type = string   
    default = "us-east-1"
}


# Default Varible Instance type
variable "instance_type" {
  description = "instance_type"
  type = string
  default = "t3.small"
}

## list varible for instance type

variable "instance_type_list" {
  description = "varibles "
}