provider "aws" {
  # Configuration options
  region = "ap-south-1"
  
}

provider "github" {
  # Configuration options
  token = "xxxxx-github-token"
}

# If we want to create a same provider we need to use alias
provider "aws" {
  region = "ap-south-1"
  alias = "west"
}