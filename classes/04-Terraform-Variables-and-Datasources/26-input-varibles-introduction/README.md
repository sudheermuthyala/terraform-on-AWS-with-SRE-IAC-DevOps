## Terraform varbles
- **Terraform Input Varibles**
- **Terraform Output Values**
- **Terraform Local Values**

**Terraform Input Varibles**
- terraform input varibles serve as input varibles for a Terraform module, allowinng aspects of the module to be customized without altering the module's own source code, and allowinng modules to be shared between different configurations.
1. input varibles - `Basics` [Example](https://github.com/sudheermuthyala/terraform-/tree/main/04-Terraform-Variables/02-Terraform_input_varibles/61-v1-input_varible_basics)
2. Provide input varibles `when Prompted` during `terraform plan or apply`[Example](https://github.com/sudheermuthyala/terraform-/tree/main/04-Terraform-Variables/02-Terraform_input_varibles/62-v2-input_varible_when_prompt)
3. `Override` the default varible values using  CLI aurgement `-var`[Example](https://github.com/sudheermuthyala/terraform-/tree/main/04-Terraform-Variables/02-Terraform_input_varibles/63-v3_Input_Variables_Override_default_value_withil_CLI_argument-var)
4. `Override` the default varible values using `Environment Varibles (TF_var_aaaaa)`[Example](https://github.com/sudheermuthyala/terraform-/tree/main/04-Terraform-Variables/02-Terraform_input_varibles/64-v4_Override_default_variable_values_using_Environment_Variables)
5. provide input varibles using `terraform.tfvars` files [Example](https://github.com/sudheermuthyala/terraform-/tree/main/04-Terraform-Variables/02-Terraform_input_varibles/65-v5-Assign_Input_Variables_from_terraform.tfvars)
6. provide input Varibles using `<any-name.tfvars>` file with CLI Aurgement `-var-file`[Example]()
7. provide input Varibles using `auto.tfvars` files [Example]()
8. Implement complex type constructors like `List & Map` in input Varibles [Example]()
9. Implement `Custom Validation Rules` in  Varibles [Example]()
10. Protect `Sensitive` Input Varibles [Example]()
[Terraform input varibles with Varibles](https://github.com/sudheermuthyala/terraform-/tree/main/04-Terraform-Variables/02-Terraform_input_varibles)

