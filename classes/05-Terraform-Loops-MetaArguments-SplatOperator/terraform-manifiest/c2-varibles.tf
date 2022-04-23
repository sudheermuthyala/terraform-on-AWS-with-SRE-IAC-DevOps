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
  description = "Ec2 instance types in List"
  type = list(string)
  default = [ "t3.micro" , "t3.small" ] 
}

variable "instance_type_map" {
    description = "Ec2 instance type in Mape"
    type = map(string)
    default = {
      "de" = "value"
    }
}