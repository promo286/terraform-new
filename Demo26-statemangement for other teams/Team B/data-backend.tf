data "terraform_remote_state" "vpc" {
  backend = "s3"

  config = {
   bucket = "statefilemangement"
    key    = "mulstate.terraform.tfstate"
    region = "us-east-1"
    }
}