resource "aws_instance" "this"{
    ami= var.ami
    instance_type= var.instance
    vpc_security_group_ids= var.sg_id
    tags= var.tag
}