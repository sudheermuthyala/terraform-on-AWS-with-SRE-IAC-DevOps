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

# Output-1
# Basic Output: All Availability Zones mapped to Supported Instance Types 
output "output_v3_1" {
  value = {
       for az, details in data.aws_ec2_instance_type_offerings.my_inst_type: az=> details.instance_types
    }
}

# Output-2
# Filtered Output: Exclude Unsupported Availability Zones
output "output_v3_2" {
  value = {
      for AZ, t in data.aws_ec2_instance_type_offerings.my_inst_type: 
      AZ=> t.instance_types if length(t.instance_types) != 0
  }
}

output "output_v3_3" {
    value = toset([for t in data.aws_ec2_instance_type_offerings.my_inst_type2: t.instance_types])

}