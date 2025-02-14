resource "aws_eip" "test" {
    domain = "vpc"
  
}

output "ip" {
    value = aws_eip.test.public_ip
  
}