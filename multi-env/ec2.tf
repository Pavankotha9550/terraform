 resource "aws_instance" "server_terraform"{
  count=length(var.instances)
  ami="ami-0220d79f3f480ecf5"
  instance_type = "t3.micro"
  vpc_security_group_ids=[aws_security_group.allow_all2.id]
  tags = {
    Name = "${var.environment}-${var.instances[count.index]}"
  }
 }
 
 
 
 resource "aws_security_group" "allow_all2" {
  name        = "${var.environment}-${var.sg_id}"
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
    Name= "${var.environment}-${var.sg_id}"
    instance= "t3.micro"
  }
}