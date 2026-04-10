output "bastion_sg" {
  value = aws_security_group.bastion.id
}

output "private_sg" {
  value = aws_security_group.private.id
}