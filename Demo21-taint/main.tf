# Terraform Taint Example
# The terraform taint command marks a resource for destruction and recreation in the next terraform apply.

# Scenario:
# You have an EC2 instance managed by Terraform, and you want to forcefully recreate it.

# resource "aws_instance" "web" {
#   ami           = "ami-0c55b159cbfafe1f0"
#   instance_type = "t2.micro"
# }

resource "aws_eip" "lb" {
    domain   = "vpc"

    tags = {
        Name = "MyEIP"
    }
}


# terraform init
# terraform apply -auto-approve
# terraform taint aws_eip.lb
# terraform apply -replace="aws_eip.lb"
# terraform plan
# terraform apply -auto-approve


