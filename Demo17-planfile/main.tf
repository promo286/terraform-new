resource "aws_eip" "lb" {
  domain = "vpc"

  tags = {
    Name = "MyEIP"
  }
}

# terraform Show 
# terraform plan -out=planfile
# terraform apply "planfile"
# terraform destroy
# terraform fmt

#Change_ticket_adding_instance