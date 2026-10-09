terraform {
  required_version = "~> 1.15.0"

  backend "s3" {
    bucket = "tfstate"
    key    = "terraform.tfstate"
    region = "us-east-1" # required but not used

    skip_credentials_validation = true
    skip_region_validation      = true
    skip_requesting_account_id  = true
    skip_metadata_api_check     = true
    use_path_style              = true
  }

  required_providers {
    github = {
      source  = "integrations/github"
      version = "~> 6.12.0"
    }
  }
}

provider "github" {
  token = var.github_token
  owner = "neurothena"
}
