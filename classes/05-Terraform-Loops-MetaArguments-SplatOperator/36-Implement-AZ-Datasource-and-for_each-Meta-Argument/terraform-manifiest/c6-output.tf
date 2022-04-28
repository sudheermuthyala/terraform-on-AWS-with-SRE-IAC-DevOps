## Output for loop with List
# while we dealing with List we provide only ["value"]
output "for_loop_with_list" {
    description = "for_loop_with_list"
    value =  [ for instance in aws_instance.myec2vm: instance.public_dns]
  
}

## Output for loop with map
## while dealing with map we have to provide {"Key" = "value"}
output "for_loop_with_map_1" {
    description = "for loop with map-1"
    value = {for instance in aws_instance.myec2vm: instance.id => instance.public_dns    }
  
}

# Output - For Loop with Map Advanced
output "for_loop_with_map_2" {
  description = "for loop with map-2"
  value = {for c, instance in aws_instance.myec2vm: c=> instance.public_dns}
}


# output Legacy Splat Operator (Legacy) - Returns List
## We are going to comment the legacy splat operator, which might be decommissioned in future versions
output "Legacy_Splat_Operator" {
    description = "Legacy splat Operator"
    value = aws_instance.myec2vm.*.public_dns
  
}

# Output Latest Generalized Splat Operator - Returns the List

output "Latest_Generalized_Splat_Operator" {
    description = " latest Generalized Operator"
    value = aws_instance.myec2vm[*].public_dns
  
}

output "AZ" {
    #value = data.aws_availability_zones.my_AZ_zones.names
    #value = toset(data.aws_availability_zones.my_AZ_zones.names)
    value = tomap(data.aws_availability_zones.my_AZ_zones.names)

  
}