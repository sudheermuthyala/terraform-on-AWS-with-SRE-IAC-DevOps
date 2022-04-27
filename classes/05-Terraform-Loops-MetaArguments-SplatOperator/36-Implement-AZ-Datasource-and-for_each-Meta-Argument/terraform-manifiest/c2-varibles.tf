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
  description = "List of varibles for instance type"
  type = list(string)
  default = [ "t3.small" , "t3.micro" , "t3.large" ] 
}

variable "instance_type_mape" {
    description = "Mape of varibles for instance type"
    type =  map(string)
    default = {
      "dev" = "t3.small"
      "qa"  = "t3.micro"
      "prod" = 
    }
  
}