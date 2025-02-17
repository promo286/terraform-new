data "terraform_remote_state" "ip" {
  backend = "s3"

  config = {
   bucket = "tamilclouddemo28"
    key    = "mulstate.terraform.tfstate"
    region = "us-east-1"
    }
}