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

# Output-3
# Filtered Output: with Keys Function - Which gets keys from a Map
# This will return the list of availability zones supported for a instance type
output "output_v3_3" {
    value = keys({for t, details in data.aws_ec2_instance_type_offerings.my_inst_type: 
    t=> details.instance_types if length(details.instance_types)!= 0 })
}

 #Output-4
# Filtered Output: with values Function - Which gets values from a Map

##c7-v3-get-instancetype-supported-per-az-in-a-region# This will return the list of availability zones supported for a instance type
output "output_v3_4" {
    value = values({for t, details in data.aws_ec2_instance_type_offerings.my_inst_type: 
    t=> details.instance_types if length(details.instance_types) == 0 })

}


# Output-5 (additional learning)
# Filtered Output: As the output is list now, get the first item from list (just for learning)
output "output_v3_5" {
  value = keys({for c, details in data.aws_ec2_instance_type_offerings.my_inst_type:
  c=> details.instance_types if length(details.instance_types)!= 0})  [0]
  
}