## Terraform configuration block
terraform {
    required_version = "~> 1.1"
    required_providers {
        aws = { 
            source = "hashi"
        }
    }
}