output "vpc_id" {
  value = module.vpc.vpc_id
}

output "public_subnet" {
  value = module.subnets.public_subnet_id
}

output "private_subnet" {
  value = module.subnets.private_subnet_id
}

output "bastion_public_ip" {
  value = module.ec2.bastion_public_ip
}

output "private_instance_id" {
  value = module.ec2.private_instance_id
}