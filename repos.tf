module "github" {
  source = "./modules/repository"

  name               = "github"
  gitignore_template = "Terraform"
}

module "frontend" {
  source = "./modules/repository"

  name = "frontend"
}

module "backend" {
  source = "./modules/repository"

  name               = "backend"
  gitignore_template = "Rust"
}

module "embedded" {
  source = "./modules/repository"

  name = "embedded"
}
