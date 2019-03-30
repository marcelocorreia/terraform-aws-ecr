resource "aws_ecr_repository" "main" {
  name = "${var.name}"
}

resource "aws_ecr_repository_policy" "main" {
  depends_on = ["aws_ecr_repository.main"]
  policy     = "${data.aws_iam_policy_document.ecr_policy.json}"
  repository = "${aws_ecr_repository.main.name}"
}
