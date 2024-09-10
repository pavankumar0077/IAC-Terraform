terraform {
  required_providers {
    github = {
      source = "integrations/github"
      version = "6.2.3"
    }
  }
}

provider "github" {
  token = "xxxxxxxxx"
}

resource "github_repository" "example" {
  name        = "testing-repo"
  description = "My awesome codebase"

  visibility = "public"
}