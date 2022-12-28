variable "vpc_cidr" {
  default = "198.168.0.0/16"
}

variable "tenancy" {
  default = "default"
}

variable "vpc_id" {
  description = "id for vpc"
}

variable "subnet_cidr" {
  default = "198.168.0.0/24"
}