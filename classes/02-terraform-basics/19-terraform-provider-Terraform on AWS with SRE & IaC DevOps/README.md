## Terraform providers
- terraform providers are `HEART` of Terraform.
- As a terraform admin in my local desktop first innstall the terraform CLI, when ever you run the `terrform init` command, what is like it go's and downlode the terraform that respective provider what ever we defind in terraform block & provide block .that respective provider is going to downloaded form the terraform registry to your local desktop. 
- when ever you run `terraform validate`, `terraform init`, `terraform apply` & `terraform destroy` this things it is going to comminucate with `AWS api's`in the aws cloud, and it is going to provisened that resources like ec2 instance etc.. 
If you want to destroy the rsources,then it will call the respective **AWS api's** and delete it But who is calling it the intermatrey is going to be the terraform aws provide

