module "my-ec2" {
  source = "../modules/ec2"
  REGION = "us-west-2"
  ZONE1 = "us-west-2a"
  AMI = "ami-0ceecbb0f30a902a6"
}