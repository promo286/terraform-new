resource "aws_eip" "lb" {
  domain = "vpc"
  instance = aws_instance.example.id
}

resource "aws_instance" "example" {
  ami           = "ami-04b4f1a9cf54c11d0"
  instance_type = "t2.micro"
}

output "IP" {
    value = aws_eip.lb.public_ip
  
}

output "instance_id" {
    value = aws_instance.example.id   
}

output "Asscouiated_instance" {
    value = aws_instance.example.public_ip
  
}

resource "time_sleep" "wait_5_minutes" {
  create_duration = "300s"
}
