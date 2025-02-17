# The -target flag allows you to apply changes to a specific resource instead of the entire infrastructure 

# Suppose your Terraform configuration manages multiple resources, 
# but you only want to apply changes to a specific EC2 instance.


resource "aws_instance" "app_server" {
  ami           = "ami-085ad6ae776d8f09c"
  instance_type = "t2.micro"
}

resource "aws_s3_bucket" "example" {
  bucket = "my-app-buckasdasdasdasdet"
}


# terraform apply -target=aws_instance.app_server


