## Terraform providers
![](2022-03-07-10-10-13.png)
- terraform providers are `HEART` of Terraform.
- As a terraform admin in my local desktop first innstall the terraform CLI, when ever you run the `terrform init` command, what is like it go's and downlode the terraform that respective provider what ever we defind in terraform block & provide block .that respective provider is going to downloaded form the terraform registry to your local desktop. 
- when ever you run `terraform validate`, `terraform init`, `terraform apply` & `terraform destroy` this things it is going to comminucate with `AWS api's`in the aws cloud, and it is going to provisened that resources like ec2 instance etc.. 
If you want to destroy the rsources,then it will call the respective **AWS api's** and delete it But who is calling it the intermatrey is going to be the terraform aws provide

## provider Requirements
- The provider requirements  you define in Terraform setting block 
![](2022-03-07-10-00-55.png)

## Provider Configuration
- And provider configuration what ever you do in your provider block 
![](2022-03-07-10-09-14.png)

## Dependency Lock File
- When ever you run the `terraform init` it generate the dependency lock file
![](2022-03-07-10-09-28.png)

## Required Providers
![](2022-03-08-06-56-51.png)
## Badges Terraform Registry
![](2022-03-08-07-02-56.png)