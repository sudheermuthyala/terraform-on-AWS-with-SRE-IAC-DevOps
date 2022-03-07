##  Terraform block
terraform{
    required_version = "~> 1.1" 
    required_providers {
        aws ={
            source = ""
            version = "" 
        }
    }
}

/*
NOTE:  version constrains
        required_version = "~> 1.1"  
        "~>" what does it's do is like any chainge to rightt most 
        version updates happens like ~> "1.1.5" allows "1.1.6" "1.1.7" "1.1.8"
        but it will                             deny   "1.2.0" "1.2.1" "1.2.2"
        because  the ~> symbole will allow you only right most version upgrades 
        it will not allow the middle numer hear "1.2.0"

        if you remove miner number leavea as "1.1" it allows "1.1.1" "1.1.2" "1.1.3"
                what ever it will allow up to "1.1.xx" and it allow "1.2.xx" "1.3.xx" everything
                why because the right most version is "1.1" hear 
*/