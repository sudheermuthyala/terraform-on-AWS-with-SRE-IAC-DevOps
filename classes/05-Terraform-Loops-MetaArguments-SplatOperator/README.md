# Terraform For Loops, Lists, Maps and Count Meta-Argument
- [MetaAurgementsReference](https://github.com/sudheermuthyala/terraform-/tree/main/03-terraform-resources/39-Breafe-About-terraform-Resource-Meta-Aurgements)

## Step-00: Pre-requisite Note
- We are using the `default vpc` in `us-east-1` region

## Step-01: Introduction
- Terraform Meta-Argument: `Count`
- **Terraform Lists & Maps**
  - List(string)
  - map(string)
- **Terraform for loops**
  - for loop with List
  - for loop with Map
  - for loop with Map Advanced
- **Splat Operators**
  - Legacy Splat Operator `.*.`
  - Generalized Splat Operator (latest)
  - Understand about Terraform Generic Splat Expression `[*]` when dealing with `count` Meta-Argument and multiple output values

## Step-02: c1-versions.tf 
- No changes

## Step-03: c2-variables.tf - Lists and Maps
```t
# AWS EC2 Instance Type - List
variable "instance_type_list" {
  description = "EC2 Instnace Type"
  type = list(string)
  default = ["t3.micro", "t3.small"]
}


# AWS EC2 Instance Type - Map
variable "instance_type_map" {
  description = "EC2 Instnace Type"
  type = map(string)
  default = {
    "dev" = "t3.micro"
    "qa"  = "t3.small"
    "prod" = "t3.large"
  }
}
```

## Step-04: c3-ec2securitygroups.tf and c4-ami-datasource.tf
- No changes to both files

## Step-05: c5-ec2instance.tf
```t
# How to reference List values ?
instance_type = var.instance_type_list[1]

# How to reference Map values ?
instance_type = var.instance_type_map["prod"]

# Meta-Argument Count
count = 2

# count.index
  tags = {
    "Name" = "Count-Demo-${count.index}"
  }
```


Implement_Outputs_with_For_Loops_and_Splat Operators
