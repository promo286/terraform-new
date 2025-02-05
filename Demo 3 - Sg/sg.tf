provider "aws" {
    region = "us-east-1"
}
  
resource "aws_security_group" "sg" {
    name        = "demo"
    description = "Allow all traffic"
  
}

resource "aws_security_group_rule" "sg_ingress" {
    security_group_id = aws_security_group.sg.id
    type              = "ingress"
    from_port         = 80
    to_port           = 80
    protocol          = "tcp"
    cidr_blocks       = ["0.0.0.0/0"]
}

resource "aws_security_group_rule" "egress" {
    security_group_id = aws_security_group.sg.id
    type              = "egress"
    from_port         = 0
    to_port           = 0
    protocol          = "-1"
    cidr_blocks       = ["0.0.0.0/0"]
}