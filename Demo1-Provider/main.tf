terraform {
  required_providers {
    aws = {
      source = "hashicorp/aws"
      version = "5.84.0"
    }
  }
}

resource "aws_instance" "demo" {
  ami= "ami-088b41ffb0933423f"
  instance_type = "t2.micro"
  
}