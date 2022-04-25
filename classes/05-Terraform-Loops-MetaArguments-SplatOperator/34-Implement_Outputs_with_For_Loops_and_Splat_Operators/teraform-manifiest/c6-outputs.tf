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
 #   value           = [for instance in aws_instance.myec2vm: instance.public_dns]
    value = aws_instance.myec2vm.public_dns
}


