## Terraform varbles
- **Terraform Input Varibles**
- **Terraform Output Values**
- **Terraform Local Values**

**Terraform Input Varibles**
- terraform input varibles serve as input varibles for a Terraform module, allowinng aspects of the module to be customized without altering the module's own source code, and allowinng modules to be shared between different configurations.
1. input varibles - `Basics`
2. Provide input varibles `when Prompted` during `terraform plan or apply`
3. `Override` the default varible values using  CLI aurgement `-var`
4. `Override` the default varible values using `Environment Varibles (TF_var_aaaaa)`
5. provide input varibles using terraform.tfvars files
