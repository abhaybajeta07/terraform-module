variable REGION {
  default = "us-west-2"
}

variable ZONE1 {
  default = "us-west-2a"
}

variable AMI {
  type = map()
  default = {
    us-west-2 = "ami-0ceecbb0f30a902a6"
    us-west-1 = "ami-00d8a762cb0c50254"
  }
}