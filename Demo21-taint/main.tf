# Terraform Taint Example
# The terraform taint command marks a resource for destruction and recreation in the next terraform apply.

# Scenario:
# You have an EC2 instance managed by Terraform, and you want to forcefully recreate it.

resource "aws_instance" "web" {
  ami           = "ami-0c55b159cbfafe1f0"
  instance_type = "t2.micro"
}


# terraform init
# terraform apply -auto-approve

terraform apply -replace="aws_instance.web"
terraform plan
terraform apply -auto-approve


