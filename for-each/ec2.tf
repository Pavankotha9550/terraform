 
 resource "aws_instance" "frontend_server"{
  #count=length(var.instances)
  for_each= var.instances
  ami=var.ami
  instance_type = each.value#var.environment=="dev" ? "t3.micro" : "t3.small" 
  vpc_security_group_ids=[aws_security_group.allow_all2.id]
  tags = {
    Name= each.key
    #Name=var.instances[count.index]
  }

 }
 
 
 
 resource "aws_security_group" "allow_all2" {
  name        = "allow_all2"
  description = "Allow TLS inbound traffic and all outbound traffic"
  
  ingress{
    from_port        = 0
    to_port          = 0
    protocol         = "-1"
    cidr_blocks      = ["0.0.0.0/0"]
    ipv6_cidr_blocks = ["::/0"]
  }

  egress {
    from_port        = 0
    to_port          = 0
    protocol         = "-1"
    cidr_blocks      = ["0.0.0.0/0"]
    ipv6_cidr_blocks = ["::/0"]
  }

  tags = {
    Name = "allow_all 2"
  }
}