## Terraform Block 
terraform {
    required_version = "~> 1.1"
    required_providers {
        aws = {
            source = "hashicorp/aws"
            version = "~> 4"
        }
    }
}

## Providev Block

provider "aws" {
    region  = var.aws_region
}