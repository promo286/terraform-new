# Fetch the default VPC in the AWS account
data "aws_vpc" "default" {
    default = true
}

# Create an EC2 instance inside the fetched VPC & Subnet
resource "aws_instance" "example" {
    ami           = "ami-0c55b159cbfafe1f0" # Example Amazon Linux 2 AMI
    instance_type = "t2.micro"


    tags = {
        Name = "EC2-In-Default-VPC"
    }
}

output "vpc_id" {
    value = data.aws_vpc.default.id
}

