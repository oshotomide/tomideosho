# vpc id 
output "vpc_id" {
  value     = aws_vpc.vpc.id
}

# public subnet az1 id
output "public_subnet_az1_id" {
  value     = aws_subnet.public_subnet_az1.id
}

# public subnet az2 id
output "public_subnet_az2_id" {
  value     = aws_subnet.public_subnet_az2.id
}

# private app subnet az1 id
output "private_app_subnet_az1_id" {
  value     = aws_subnet.private_app_subnet_az1.id
}

# private app subnet az2 id
output "private_app_subnet_az2_id" {
  value     = aws_subnet.private_app_subnet_az2.id
}

# private data subnet az1 id
output "private_data_subnet_az1_id" {
  value     = aws_subnet.private_data_subnet_az1.id
}

# private data subnet az2 id
output "private_data_subnet_az2_id" {
  value     = aws_subnet.private_data_subnet_az2.id
}

# application load balancer security group id
output "alb_security_group_id" {
  value     = aws_security_group.alb_security_group.id
}

# ssh security group id
output "ssh_security_group_id" {
  value     = aws_security_group.ssh_security_group.id
}

# web server security group id
output "webserver_security_group_id" {
  value     = aws_security_group.webserver_security_group.id
}

# database security group id
output "database_security_group_id" {
  value     = aws_security_group.database_security_group.id
}

# database endpoint
output "database_instance_endpoint" {
  value     = aws_db_instance.database_instance.endpoint
}

# target group arn
output "alb_target_group_arn" {
  value     = aws_lb_target_group.alb_target_group.arn 
}

# application load balancer dns name
output "application_load_balancer_dns_name" {
  value     = aws_lb.application_load_balancer.dns_name 
}

# application load balancer zone id
output "application_load_balancer_zone_id" {
  value     = aws_lb.application_load_balancer.zone_id
}

# website url
output "website_url" {
  value     = join ("", ["https://", var.record_name, ".", var.domain_name])
}