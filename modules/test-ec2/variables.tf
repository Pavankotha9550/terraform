variable "instance_type"{
    default= "t3.micro"
}

variable "security_group_ids"{
    default= ["sg-0eb37934b98ccd442"]
}

variable "tags"{
    default={
        Name= "Module_test"
        Tech= "Terraform"
    }
}