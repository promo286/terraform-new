

resource "aws_instance" "example" {
  ami           = "ami-085ad6ae776d8f09c" 
  instance_type = "t2.micro"

  
}



# terraform Show 
# terraform plan -out=planfile
# terraform apply "planfile"
# terraform destroy
# terraform fmt