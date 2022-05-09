terraform {
    required_version = "~> 1.1"
    required_providers {
        aws ={
            Source = "hashicorp/aws"
            version = "~> 4"
            
            
        }
    }
}

provider "aws" {
    profile = "default"
    region = var.aws_region
  
}
