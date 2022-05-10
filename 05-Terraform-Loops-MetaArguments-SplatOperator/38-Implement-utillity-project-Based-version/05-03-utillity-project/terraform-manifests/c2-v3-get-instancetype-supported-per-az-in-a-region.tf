## Datasource-1
data "aws_availability_zones" "my_AZ_zones" {
  filter {
    name   = "opt-in-status"
    values = ["opt-in-not-required"]
  }
}

## Datasource-2
data "aws_ec2_instance_type_offerings" "my_inst_type" {
    for_each    = toset(data.aws_availability_zones.my_AZ_zones.names)
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

output "output_v3_1" {
  value = [for az, details in data.aws_ec2_instance_type_offerings.my_inst_type: details.instance_types]
}