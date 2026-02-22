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
  default = {
    Name    = "roboshop_frontend"
    purpose = "tstiing"
  }
}

variable "environment" {
  type        = string
  description = "Deployment environment name"
  default     = "dev"
}

variable "instances" {
  default = {
    Rabbitmq = "t3.micro"
    Redis    = "t3.micro"
  }
}

variable "zone_id" {
  default = "Z09059862X9S9AE54Z9SP"
}

variable "domain_name" {
  default = "daws84.cyou"
}

variable "ingress" {
  default = [{
    from_port = 0
    to_port   = 0
    },
    {
      from_port = 8080
      to_port   = 8080
  }]

}