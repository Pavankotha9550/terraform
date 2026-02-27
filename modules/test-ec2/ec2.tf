module "ec2"{
    source= "../module-ec2"
    instance= var.instance_type
    sg_id= var.security_group_ids
    tag=var.tags
}