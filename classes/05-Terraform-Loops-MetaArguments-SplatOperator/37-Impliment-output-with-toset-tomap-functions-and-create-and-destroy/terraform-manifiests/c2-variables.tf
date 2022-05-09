variable "aws_region" {
  default = "us-east-1"
}

variable "instance_type" {
  default= "t2.micro"
  type = string
}

variable "key_name" {
  default = "terraform-k"
  type = string
}

variable "instance_type_list" {
  type = list(string)
  default = ["t2.micro", "t3.small","t3.large"]
  
  
}

variable "instance_type_map" {
  type = map(string)
  default     = {
    "env"     = "t2.micro"
    "qa"      = "t3.small"
    "prod"    = "t3.large"
  }

  
}