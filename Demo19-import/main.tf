provider "aws" {
  region = "us-east-1"
  
}

import {
  to=aws_instance.demo
  id="i-0f2594aca4fedffb5"
}

import {
  to= aws_security_group.demo1
  id="sg-00e5a37cc92cf9cf4"
}

# terraform plan -generate-config-out=sg.tf
