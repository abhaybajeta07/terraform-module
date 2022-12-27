module "my-vpc" {
  source = "../modules/VPC"
  vpc_id = module.my-vpc.vpc_id
  vpc_cidr = "198.168.0.0/16"
  subnet_cidr = "198.168.0.0/24"
  tenancy = "default"
}

module "my-ec2" {
  source = "../modules/ec2"
  REGION = "us-west-2"
  ZONE1 = "us-west-2a"
  AMI = "ami-0ceecbb0f30a902a6"
  subnet_id = module.my-vpc.subnet_id
  sec_group = module.my-vpc.security_group_id
}