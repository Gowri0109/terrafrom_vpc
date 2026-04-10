variable "aws_region" {
  default = "ap-south-1"
}

variable "vpc_cidr" {}
variable "public_subnet_cidr" {}
variable "private_subnet_cidr" {}

variable "ami" {}
variable "instance_type" {
  default = "t2.micro"
}