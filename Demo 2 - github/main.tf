terraform {
  required_providers {
    github = {
      source  = "integrations/github"
      version = "~> 6.0"
    }
  }
}

provider "github" { 

    token = "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"
    
}

resource "github_repository" "example" {
  name        = "example"
  description = "This is your first repository"
  visibility  = "public" 
}