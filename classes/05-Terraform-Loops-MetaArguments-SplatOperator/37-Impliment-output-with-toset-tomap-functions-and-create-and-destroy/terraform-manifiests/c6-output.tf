## Output for loop with List

output "for_loop_with_list" {
  description = "for_loop_with_list"
  value = [for instance in aws_instance.myec2vm: instance.public_dns]
}

output "for_loop_with_map_1" {
  description = "for_loop_with_map_1"
  value = {for instance in aws_instance.myec2vm: instance.id => instance.public_dns}

}

output "for_loop_with_map_2" {
    description = "for_loop_with_map_2"
    value = {for c, instance in aws_instance.myec2vm: c=> instance.public_dns}

}