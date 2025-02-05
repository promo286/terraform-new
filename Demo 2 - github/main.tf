terraform {
  required_providers {
    github = {
      source  = "integrations/github"
      version = "~> 6.0"
    }
  }
}

provider "github" { 

   
    
}

resource "github_repository" "example" {
  name        = "example"
  description = "This is your first repository"
  visibility  = "public" 
}