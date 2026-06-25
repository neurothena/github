terraform {
  required_version = "~> 1.12.0"

  required_providers {
    github = {
      source  = "integrations/github"
      version = "~> 6.12.0"
    }
  }
}


resource "github_repository" "this" {
  name       = var.name
  visibility = "public"

  gitignore_template = var.gitignore_template

  has_discussions = false
  has_issues      = true
  has_projects    = false
  has_wiki        = false

  squash_merge_commit_title = "PR_TITLE"
  squash_merge_commit_message = "PR_BODY"
  merge_commit_title = "PR_TITLE"
  merge_commit_message = "PR_BODY"

  auto_init = true
}
