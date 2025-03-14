resource "aws_instance" "web" {
  
  ami                 = var.ami_id
  instance_type        = var.instance_type
  key_name             = var.key_name
  vpc_security_group_ids = var.vpc_security_group_ids
  subnet_id           = var.subnet_id
  tags = {
    name = var.project_name
  }
}
