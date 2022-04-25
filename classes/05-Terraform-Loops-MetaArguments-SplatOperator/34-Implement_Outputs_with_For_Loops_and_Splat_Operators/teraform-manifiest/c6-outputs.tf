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
  value = {for m, instance in aws_instance.myec2vm: m => instance.public_dns}
}


# Legacy Splat Operator (Legacy) - Returns List

output "Legacy_Splat_Operator" {
    description = "Legacy Splat Expression"
    value = aws_instance.myec2vm.*.public_dns
  
}


# Legacy Splat Operator (Legacy) - Returns List
