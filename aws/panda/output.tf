# Get elb_dns_name at the end of apply.
output "elb_dns_name" {
    value = aws_lb.alb.dns_name
}


# Get private_ip from previous run.
#output "my_private_ip" {
#    value = aws_instance.panda.private_ip
#}