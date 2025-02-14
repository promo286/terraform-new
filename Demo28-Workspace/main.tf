# Terraform workspaces allow you to manage multiple environments (e.g., dev, staging, prod) 
# using the same configuration.

variable "instance_type" {
  type = map(string)
  default = {
    default = "t2.micro"
    dev     = "t2.small"
    prod    = "t3.medium"
  }
}

resource "aws_instance" "example" {
  ami           = "ami-12345678"
  instance_type = lookup(var.instance_type, terraform.workspace, "t2.micro")
}


# terraform workspace new dev
# terraform workspace new prod
# terraform workspace list
# terraform workspace select prod
# terraform workspace delete dev

