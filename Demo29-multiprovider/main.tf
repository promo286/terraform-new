# 2  instance in diffrent region 

# 1 us-east-1
# 2 ap-south-1 

provider "aws" {
  region = "us-east-1"
}

provider "aws" {
  region = "ap-south-1"
  alias = "south"
}
provider "aws" {
  region = "us-west-1"
  alias = "west"
}


resource "aws_instance" "demo" {
    ami= "ami-053a45fff0a704a47"
    instance_type = "t2.micro"
  
}

resource "aws_instance" "south" {
    provider = aws.south
    ami= "ami-0ddfba243cbee3768"
    instance_type = "t2.micro"
  
}
