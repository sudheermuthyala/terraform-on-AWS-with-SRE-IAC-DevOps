/*
1. for loop with list
2. for loop with map
3. for loop with map Advanced
4. Legacy Splat Operator (Legacy) - Returns List
5. Legacy Generalized Splat Operator returens the List

*/

## Output for loop with List
output "for_loop_with_list" {
    description     = "for loop with loop"
    value           = [for instance in aws_instance.myec2vm: instance.public_dns]
}


## Output for loop with map

output "for_loop_with_map_1" {
    description = "for loop with map-1"
    value = {for instance in aws_instance.myec2vm: instance.id => instance.public_dns}
  
}
# Output - For Loop with Map Advanced

output "for_loop_with_map_2_Advanced" {
  description = "for loop with map-2"
  value = {for c, instance in aws_instance.myec2vm: c => instance.public_dns}
}


# output Legacy Splat Operator (Legacy) - Returns List
## We are going to comment the legacy splat operator, which might be decommissioned in future versions


output "Legacy_Splat_Operator" {
    description = "Legacy Splat Expression"
    value = aws_instance.myec2vm.*.public_dns
  
}

# Output Latest Generalized Splat Operator - Returns the List

output "Latest_Generalized_Splat_Operator" {
  description = "Latest Generalized Splat Operator - Returns the List"
  value = aws_instance.myec2vm[*].public_dns
}
