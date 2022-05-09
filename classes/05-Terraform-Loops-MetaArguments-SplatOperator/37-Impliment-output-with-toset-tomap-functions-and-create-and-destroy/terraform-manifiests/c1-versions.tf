terraform {
    required_version = "~> 1.1"
    required_provider {
        aws ={
            Source = "hashicorp/aws"
            versions = "~> 4"
            
        }
    }
}

provider "aws" {
    profile = "default"
    region = var.aws_region
  
}
