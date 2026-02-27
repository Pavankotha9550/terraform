module "vpc"{
    source= "../vpc-terraform"
    project=var.project
    environment=var.environment
    public_subnets_cidr=["10.0.1.0/24", "10.0.2.0/24"]
    private_subnets_cidr=["10.0.11.0/24", "10.0.12.0/24"]
    database_subnets_cidr=["10.0.21.0/24", "10.0.22.0/24"]

}
