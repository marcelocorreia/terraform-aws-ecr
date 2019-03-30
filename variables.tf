variable "name" {}

variable "read_only_users" {
  type    = "list"
  default = []
}

variable "read_only_roles" {
  type    = "list"
  default = []
}

variable "read_write_roles" {
  type    = "list"
  default = []
}

variable "read_write_users" {
  type    = "list"
  default = []
}

locals {
  read_only_list  = "${concat(var.read_only_roles,var.read_only_users)}"
  read_write_list = "${concat(var.read_write_roles,var.read_write_users)}"
}
