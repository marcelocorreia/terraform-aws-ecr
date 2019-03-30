provider "aws" {
  region = "ap-southeast-2"
}

module "ecr" {
  name             = "ecr"
  source           = "../"
  read_only_users  = ["dalek", "doctor"]
  read_write_roles = ["dalek", "doctor"]
  read_only_roles  = ["dalek", "doctor"]
  read_write_users = ["dalek", "doctor"]
}

output "ecr_read_write_users" {
  value = "${module.ecr.read_write_list}"
}

output "ecr_read_only_users" {
  value = "${module.ecr.read_only_list}"
}

output "ecr_repositories_arn" {
  value = "${module.ecr.repository_arn}"
}

output "ecr_repositories_url" {
  value = "${module.ecr.repository_url}"
}

output "ecr_repositories_id" {
  value = "${module.ecr.repository_id}"
}
