output "public_ip" {
  value = aws_instance.devops_server.public_ip
}
output "public_dns" {
  value = aws_instance.devops_server.public_dns
}
output "private_ip" {
  value = aws_instance.devops_server.private_ip
}
output "private_dns" {
  value = aws_instance.devops_server.private_dns
}
output "ami" {
  value = aws_instance.devops_server.ami
}
output "instance_type" {
  value = aws_instance.devops_server.instance_type
}
output "vpc_id" {
  value = aws_instance.devops_server.vpc_id
}
output "subnet_id" {
  value = aws_instance.devops_server.subnet_id
}
output "security_groups" {
  value = aws_instance.devops_server.security_groups
}
output "key_name" {
  value = aws_instance.devops_server.key_name
}
output "tags" {
  value = aws_instance.devops_server.tags
}
output "user_data" {
  value = aws_instance.devops_server.user_data
}
output "iam_instance_profile" {
  value = aws_instance.devops_server.iam_instance_profile
}
output "root_block_device" {
  value = aws_instance.devops_server.root_block_device
}
output "ebs_block_device" {
  value = aws_instance.devops_server.ebs_block_device
}
output "timeouts" {
  value = aws_instance.devops_server.timeouts
}
output "arn" {
  value = aws_instance.devops_server.arn
}