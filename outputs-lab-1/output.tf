output "private_ip_1" {
    value = aws_instance.variable_instance_1.private_ip
    description = "private ip for instance 1"
}

output "private_ip_2" {
    value = aws_instance.variable_instance_2.private_ip
    description = "private ip for instance 2"
}