variable "project_name" {
  description = "Project name"
  type = string
}

variable "ami_id" {
  description = "AMI ID created by Packer"
  type = string
}

variable "instance_type" {
  description = "EC2 instance type"
  type = string
  default     = "t2.micro"
}

variable "key_name" {
  description = "SSH key name"
  type = string
}

variable "vpc_security_group_ids" {
  description = "List of security group IDs"
  type        = list(string)

}

variable "subnet_id" {
  description = "Subnet ID"
}
