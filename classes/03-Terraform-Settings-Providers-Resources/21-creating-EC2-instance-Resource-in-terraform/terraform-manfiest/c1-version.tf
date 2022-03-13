## terraform Block
terraform {
    required_version = "~> 1.1"
    required_providers {
        aws = {
            source = "hashicrop/aws"
            version = "~> 4.4"
        }
    }    
}



/*terraform {
  required_version = "~> 1.1" # which means any version equal & above 0.14 like 0.15, 0.16 etc and < 1.xx
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 4.4"
    }
  }
}
*/


## Provider Block 

provider "aws" {
  region = "us-east-1"
}
