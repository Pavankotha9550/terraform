variable "instance_type" {
  type        = string
  description = "EC2 instance type for the web server"
  default     = "t3.micro"
}
variable "ami" {
  type        = string
  description = "EC2 instance ami"
  default     = "ami-0220d79f3f480ecf5"
}

variable "tags" {
  default={
    Name= "roboshop_frontend"
    purpose= "tstiing"
  }
}

variable "instances"{
  default=["mongodb", "redis"]
}

variable "environment"{

}
variable "sg_id"{
  default= "allow-all"
}