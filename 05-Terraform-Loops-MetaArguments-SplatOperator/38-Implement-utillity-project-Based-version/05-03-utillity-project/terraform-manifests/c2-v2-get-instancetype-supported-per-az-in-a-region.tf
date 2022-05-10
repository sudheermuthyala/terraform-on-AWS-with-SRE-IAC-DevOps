## Using for_each create multiple instances of datasource and loop it with hard-coded availability zones in for_each
## Review / Create the datasource and its output with for_each

data "aws_ec2_instance_type_offerings" "my_inst_type2" {
    for_each    = toset(["us-east-1a","us-east-1b","us-east-1e"])
  filter {
    name   = "instance-type"
    values = ["t3.micro"]
  }

  filter {
    name   = "location"
    values = [each.key]
  }

  location_type = "availability-zone"
}


output "output_v2_1" {
  value = [for t in data.aws_ec2_instance_type_offerings.my_inst_type2: t.instance_types]
}