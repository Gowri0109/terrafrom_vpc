module "vpc" {
  source = "../modules/vpc"
  cidr_block = var.vpc_cidr
}

module "subnets" {
  source = "../modules/subnets"
  vpc_id = module.vpc.vpc_id
  public_cidr  = var.public_subnet_cidr
  private_cidr = var.private_subnet_cidr
}

module "security" {
  source = "../modules/security"
  vpc_id = module.vpc.vpc_id
}

module "ec2" {
  source = "../modules/ec2"

  ami           = var.ami
  instance_type = var.instance_type

  public_subnet_id  = module.subnets.public_subnet_id
  private_subnet_id = module.subnets.private_subnet_id

  bastion_sg = module.security.bastion_sg
  private_sg = module.security.private_sg
}