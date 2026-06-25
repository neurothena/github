resource "github_branch_default" "main_branch" {
  repository = github_repository.this.name
  branch     = "main"

  rename = true
}

resource "github_repository_ruleset" "main_branch" {
  name        = "main-branch"
  repository  = github_repository.this.name
  target      = "branch"
  enforcement = "active"

  conditions {
    ref_name {
      include = ["refs/heads/main"]
      exclude = []
    }
  }

  rules {
    pull_request {
      allowed_merge_methods = ["merge"]
      required_approving_review_count = 0
    }
    deletion = false
  }
}

resource "github_branch" "development_branch" {
  repository = github_repository.this.name
  branch     = "development"
}

resource "github_repository_ruleset" "development_branch" {
  name        = "development-branch"
  repository  = github_repository.this.name
  target      = "branch"
  enforcement = "active"

  conditions {
    ref_name {
      include = ["refs/heads/development"]
      exclude = []
    }
  }

  rules {
    pull_request {
      allowed_merge_methods = ["squash"]
      required_approving_review_count = 0
    }
    deletion = false
  }
}

