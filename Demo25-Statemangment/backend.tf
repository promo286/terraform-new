terraform {
  backend "s3" {
    bucket = "tamilclouddemo28"
    key    = "demo.terraform.tfstate"
    region = "us-east-1"
    dynamodb_table = "terrafrom_lock"
  }
}

#LockID