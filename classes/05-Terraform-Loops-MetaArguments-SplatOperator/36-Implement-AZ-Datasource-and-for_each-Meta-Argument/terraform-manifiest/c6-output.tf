output "for_loop_with_list" {
    description = "for_loop_with_list"
    value =  [ for instance in aws_instance.myec2vm: instance.public_dns]
  
}


output "for_loop_with_list" {
    description = "for loop with map"
    value = {
        
    }
  
}