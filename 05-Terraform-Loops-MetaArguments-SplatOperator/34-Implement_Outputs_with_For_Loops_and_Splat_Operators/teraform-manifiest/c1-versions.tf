terraform {
    required_version = "~> 1.1"
    required_providers {
        aws = {
            version = "~> 4"
            source  = "hashicorp/aws"
        }
    }
}

provider "aws" {
    region = ""
    profile = ""
}