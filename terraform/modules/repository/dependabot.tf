resource "github_repository_vulnerability_alerts" "vulnerability_alerts" {
  repository = github_repository.this.name
  enabled = true
}

resource "github_repository_dependabot_security_updates" "security_updates" {
  repository = github_repository.this.name
  enabled = true
}
