provider "aws" {
  region= "us-east-1"
  
}

resource "aws_instance" "firstec2" {
  ami = "ami-04b4f1a9cf54c11d0"
  instance_type = "t2.small"

  tags = {
    Name ="myfirstec2"
    mangedby = "terraform"

  }
   
}