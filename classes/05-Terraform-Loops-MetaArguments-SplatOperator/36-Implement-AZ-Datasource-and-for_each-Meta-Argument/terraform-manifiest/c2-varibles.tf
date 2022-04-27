variable "aws_region" {
    description = "aws region"
    type = string   
    default = "us-east-1"
}


# Default Varible Instance ype
variable "instance_type" {
  description = "instance_type"
  type = string
  default = "t3.small"
}

## list varible for instance ty