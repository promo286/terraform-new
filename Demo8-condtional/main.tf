variable "environment" {
  type    = string
  default = "dev"
}

variable "workload" {
  type    = string
  default = "low"
}

# Use locals for conditional logic
locals {
  instance_type = (
    var.environment == "prod" && var.workload == "high"   ? "t3.large" :
    var.environment == "prod" && var.workload == "medium" ? "t3.medium" :
    "t2.micro"
  )
}

resource "aws_instance" "example" {
  ami           = "ami-12345678"
  instance_type = local.instance_type
}
