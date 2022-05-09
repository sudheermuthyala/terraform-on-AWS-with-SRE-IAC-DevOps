## Output for loop with List

output "for_loop_with_list" {
  description = "for_loop_with_list"
  value = [for instance in aws_instance.myec2vm: instance.public_dns]
}

output "for_loop_with_map" {
  description = "for_loop_with_map"
  #value = {for c, Instance in aws_instance.myec2vm: c=> instance.public_dns}
      value = {for instance in aws_instance.myec2vm: instance.id => instance.public_dns}

}