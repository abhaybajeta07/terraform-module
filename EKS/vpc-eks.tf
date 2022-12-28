module "vpc-eks" {
  source = "../modules/VPC"
  vpc_id = module.vpc-eks.vpc_id
  vpc_cidr = var.vpc_cidr
}