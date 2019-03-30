output "read_write_list" {
  value = "${local.read_write_list}"
}

output "read_only_list" {
  value = "${local.read_only_list}"
}

output "policies" {
  value = "${data.aws_iam_policy_document.ecr_policy.json}"
}

output "repository_arn" {
  value = "${aws_ecr_repository.main.arn}"
}

output "repository_id" {
  value = "${aws_ecr_repository.main.id}"
}

output "repository_url" {
  value = "${aws_ecr_repository.main.repository_url}"
}
