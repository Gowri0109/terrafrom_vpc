# 🔹 Bastion Host (Public EC2)
resource "aws_instance" "bastion" {
  ami           = var.ami
  instance_type = var.instance_type
  subnet_id     = var.public_subnet_id

  vpc_security_group_ids = [var.bastion_sg]

  associate_public_ip_address = true

  tags = {
    Name = "bastion-host"
  }
}

# 🔹 Private EC2
resource "aws_instance" "private" {
  ami           = var.ami
  instance_type = var.instance_type
  subnet_id     = var.private_subnet_id

  vpc_security_group_ids = [var.private_sg]

  tags = {
    Name = "private-ec2"
  }
}