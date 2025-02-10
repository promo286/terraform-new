provider "aws" {
  region = "us-east-1"
}

# locals {
#   instance_name = "my-ec2-instance"
#   ami_id        = "ami-08a0d1e16fc3f61ea" # Example AMI ID (Amazon Linux 2)
#   instance_type = "t2.micro"
#   tags = {
#     Name        = local.instance_name
#     Environment = "dev"
#   }
# }

# resource "aws_instance" "example" {
#   ami           = local.ami_id
#   instance_type = local.instance_type

#   tags = local.tags
# }

# output "instance_id" {
#   value = aws_instance.example.id
# }


#  #example 2 
# variable "tags" {
#   type = map
#   default = {
#     Team = "security-team"
#   }
# }

# locals {
#   default = {
#     Team = "security-teams"
#     CreationDate = "date-${formatdate("DD MMM YYYY",timestamp())}"
#     managed_by = "terraform"
#   }
# }

# resource "aws_security_group" "sg_01" {
#   name = "app_firewall"
#   tags = local.default
# }

# resource "aws_security_group" "sg_02" {
#   name = "db_firewall"
#   tags = local.default
# }

data "aws_instance" "example" {
  instance_id = "i-0a3acd51159006c70"
}

output "instance_id" {
  value = data.aws_instance.example.id
}

output "instance_public_ip" {
  value = data.aws_instance.example.public_ip
}