module "my-vpc" {
  source = "../modules/VPC"
  vpc_id = module.my-vpc.vpc_id
  vpc_cidr = 198.168.0.0/16
  subnet_cidr = 198.168.0.0/24
  tenancy = "default"
}