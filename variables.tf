variable "collaborators" {
  type = set(string)
}

variable "github_token" {
  type      = string
  sensitive = true
}

variable "email" {
  type      = string
  sensitive = true
}
