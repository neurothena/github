variable "name" {
  type = string
}

variable "is_private" {
  type    = bool
  default = false
}

variable "gitignore_template" {
  type    = string
  default = null
}
