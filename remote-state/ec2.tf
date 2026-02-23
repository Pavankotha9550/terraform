 resource "aws_instance" "server_terraform"{
  ami="ami-0220d79f3f480ecf5"
  instance_type = "t3.micro"
  #vpc_security_group_ids=[aws_security_group.allow_all2.id]
  vpc_security_group_ids=local.sg_id
  tags = {
    Name = "server terraform"
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