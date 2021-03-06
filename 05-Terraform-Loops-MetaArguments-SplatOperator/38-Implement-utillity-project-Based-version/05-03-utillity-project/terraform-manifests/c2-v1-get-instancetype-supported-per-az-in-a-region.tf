#/*
## c2-v1-get-instancetype-supported-per-az-in-a-region.tf

## Datasource aws_ec2_instance_type_offerings
## Review / Create the datasource and its output

data "aws_ec2_instance_type_offerings" "my_inst_type1" {
  filter {
    name   = "instance-type"
    values = ["t3.micro"]
  }

  filter {
    name   = "location"
    #values = ["us-east-1a"]
    values = ["us-east-1e"]

  }

  location_type = "availability-zone"
}


## Output 
#output "output_v1_1_useast_1a" {
#    value = data.aws_ec2_instance_type_offerings.my_inst_type1.instance_types
#}
#
output "output_v1_1_us_east_1e" {
    value = data.aws_ec2_instance_type_offerings.my_inst_type1.instance_types
}

#*/