terraform {
  backend "s3" {
    bucket = "statefilemangement"
    key    = "mulstate.terraform.tfstate"
    region = "us-east-1"
    dynamodb_table = "teraform_lock_table"
  }
}
