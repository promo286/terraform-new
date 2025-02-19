provider "aws" {
  region = "us-east-1"
  
}

import {
  to=aws_instance.demo
  id="i-0bec5b7cabd9bd57e"
}

import {
  to= aws_security_group.demo1
  id="sg-0817de48efa7cadab"
}

# terraform plan -generate-config-out=sg.tf


