resource "github_organization_settings" "main" {
  default_repository_permission = "write"
  billing_email                 = var.email
}

resource "github_membership" "collaborators" {
  for_each = var.collaborators

  username = each.value
}
