## terraform Block
terraform{
    required_version = "~> 1.1"
    required_providers{
        aws = {
            source = "hashicrop/aws"
            version = "~>4.4.0"
        }
    }    
}

## Provider Block 

provider "aws" {
  region = "us-east-1"
}
