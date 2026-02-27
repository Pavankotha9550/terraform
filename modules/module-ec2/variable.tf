variable "ami"{
    type= string
    default= "ami-0220d79f3f480ecf5"
    description= "ec2 instance ami id"
}

variable "instance"{
    type= string
    description= "instance_type"
    default="t3.micro"

    validation{
    condition=contains(["t3.micro","t3.medium"],var.instance)
    error_message= "instance must be t3.micro, t3.medium"
    }

    }

variable "sg_id"{
    type=list
}

variable "tag"{
    type= map
}