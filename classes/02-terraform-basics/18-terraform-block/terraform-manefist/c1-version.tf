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
        ~> what does it's do is like any chainge to rightt most version updates happens like ~> "1.1.5" allows 


*/