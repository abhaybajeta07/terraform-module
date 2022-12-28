variable "AWS-REGION" {
  default = "us-east-2"
}

variable "ZONE1" {
  default = "us-east-2a"
}

variable "ZONE2" {
  default = "us-east-2b"
}

variable "ZONE3" {
  default = "us-east-2c"
}

variable "vpc_cidr" {
  default = "198.168.0.0/16"
}

variable "PubSub1CIDR" {
  default = "198.168.0.0/24"
}

variable "PubSub2CIDR" {
  default = "198.168.0.0/24"
}

variable "PubSub3CIDR" {
  default = "198.168.0.0/24"
}

variable "PrivSub1CIDR" {
  default = "198.168.0.0/24"
}

variable "PrivSub2CIDR" {
  default = "198.168.0.0/24"
}

variable "PrivSub3CIDR" {
  default = "198.168.0.0/24"
}