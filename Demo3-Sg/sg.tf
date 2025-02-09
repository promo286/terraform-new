provider "aws" {
    region = "us-east-1"
}
  
  resource "aws_security_group" "sg" {
    name= "demo-sg"
    description = "Allow inbound traffic on port 80"

   
}

  resource "aws_vpc_security_group_ingress_rule" "demo12" {
    security_group_id = aws_security_group.sg.id
cidr_ipv4         = "0.0.0.0/0"
    from_port         = 443
    ip_protocol       = "tcp"
        to_port           = 443
        description = "Allow inbound traffic on port 443"

    
  }

    resource "aws_vpc_security_group_ingress_rule" "demo123" {
    security_group_id = aws_security_group.sg.id
    cidr_ipv4         = "0.0.0.0/0"
    from_port         = 80
    ip_protocol       = "tcp"
    to_port           = 100
    description = "Allow inbound traffic on port 80 to 100"

    
  }