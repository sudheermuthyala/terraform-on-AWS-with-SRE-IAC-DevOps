## reagion 
variable "aws_region" {
    description = "aws region"
    type = string
    default = "us-east-1"
  }

variable "insyance_type" {
  description = "instance type"
  type = string
  default = "t3.small"
}

variable "instance_key_pair" {
    description = "instance key pair"
    type = string
    default = "terraform-k"

}


variable "instance_type_list" {
  description = "value"
}