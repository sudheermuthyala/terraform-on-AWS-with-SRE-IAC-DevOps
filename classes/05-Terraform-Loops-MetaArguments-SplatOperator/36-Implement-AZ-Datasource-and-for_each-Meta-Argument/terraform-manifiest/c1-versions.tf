terraform {
    required_version = "~> 1.1"
    required_providers {
        aws = {
            source = "hashicorp/aws"
             version    =   "~> 4"
        }
    }    
}

provider "aws" {    ## this will take default profile when 
#   profile = ""        
#   region = ""
}