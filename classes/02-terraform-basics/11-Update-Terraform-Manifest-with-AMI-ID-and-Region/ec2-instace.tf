# terraform settings Block
terraform{
    required_providers {
        aws = {
        source  = "hashicorp/aws"
        #version = "~> 3.21" # Optional but recommended in production
    }
    }
}

# provider Block
provider "aws" {
  profile   = "default"  # AWS Credentials Profile configured on your local desktop terminal  $HOME/.aws/credentials
  region    = "us-east-1"
}

## Resource block

resource "aws_instance" "demoonec2" {
  ami = "ami-0d997c5f64a74852c"
  instance_type = "t2.micro"

  tags = {
    "Name" = "value"
  }
}