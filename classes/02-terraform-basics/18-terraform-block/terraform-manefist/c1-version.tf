##  Terraform block
terraform{
    required_version = "~> 1.1" 
    required_providers {
        aws ={
            source = ""
            version = " "
        }
    }
}

/*
NOTE:  version constrains
        required_version = "~> 1.1"  
        ~> what does it's do is like will allows the right most 


*/