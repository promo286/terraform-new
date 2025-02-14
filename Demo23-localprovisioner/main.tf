#The local-exec provisioner runs commands on the machine where Terraform is executed.

resource "aws_instance" "example" {
  ami           = "ami-04b4f1a9cf54c11d0" 
  instance_type = "t2.micro"

  provisioner "local-exec" {
    command = "echo 'Instance ${self.id} created successfully!' >> instance.txt"
  }

  tags = {
    Name = "LocalExecExample"
  }
}
