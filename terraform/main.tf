resource "aws_security_group" "devops_sg" {
  name = "devops-sg"

  ingress { from_port=22 to_port=22 protocol="tcp" cidr_blocks=["0.0.0.0/0"] }
  ingress { from_port=80 to_port=80 protocol="tcp" cidr_blocks=["0.0.0.0/0"] }
  ingress { from_port=443 to_port=443 protocol="tcp" cidr_blocks=["0.0.0.0/0"] }
  ingress { from_port=8080 to_port=8080 protocol="tcp" cidr_blocks=["0.0.0.0/0"] }

  egress { from_port=0 to_port=0 protocol="-1" cidr_blocks=["0.0.0.0/0"] }
}

resource "aws_instance" "devops_server" {
  ami           = "ami-019715e0d74f695be"
  instance_type = "t3.micro"
  key_name      = var.key_name
  security_groups = [aws_security_group.devops_sg.name]
  user_data     = file("user_data.sh")

  tags = { Name = "NextAstra-DevOps-Server" }
}
