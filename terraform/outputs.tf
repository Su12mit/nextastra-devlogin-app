output "instance_public_ip" {
  description = "Public IP of the EC2 instance"
  value       = aws_instance.devops_server.public_ip
}

output "instance_public_dns" {
  description = "Public DNS of the EC2 instance"
  value       = aws_instance.devops_server.public_dns
}

output "instance_private_ip" {
  description = "Private IP of the EC2 instance"
  value       = aws_instance.devops_server.private_ip
}

output "availability_zone" {
  description = "Availability Zone of the EC2 instance"
  value       = aws_instance.devops_server.availability_zone
}

output "vpc_id" {
  description = "ID of the created VPC"
  value       = aws_vpc.devops_vpc.id
}

output "public_subnet_id" {
  description = "ID of the public subnet"
  value       = aws_subnet.public_subnet.id
}

output "security_group_id" {
  description = "Security Group attached to the EC2 instance"
  value       = aws_security_group.devops_sg.id
}

output "jenkins_url" {
  description = "Access Jenkins UI"
  value       = "http://${aws_instance.devops_server.public_dns}:8080"
}

output "app_url_http" {
  description = "Application URL over HTTP (before SSL)"
  value       = "http://${aws_instance.devops_server.public_dns}"
}
