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
