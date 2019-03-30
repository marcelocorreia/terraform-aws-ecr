data "aws_iam_policy_document" "ecr_policy" {
  statement {
    sid = "ecr_policy_write"

    principals {
      identifiers = ["${local.read_write_list}"]

      type = "AWS"
    }

    effect = "Allow"

    actions = [
      "ecr:GetDownloadUrlForLayer",
      "ecr:BatchGetImage",
      "ecr:BatchCheckLayerAvailability",
      "ecr:PutImage",
      "ecr:InitiateLayerUpload",
      "ecr:UploadLayerPart",
      "ecr:CompleteLayerUpload",
      "ecr:DescribeRepositories",
      "ecr:GetRepositoryPolicy",
      "ecr:ListImages",
      "ecr:DeleteRepository",
      "ecr:BatchDeleteImage",
      "ecr:SetRepositoryPolicy",
      "ecr:DeleteRepositoryPolicy",
    ]
  }

  statement {
    sid = "ecr_policy_read"

    principals {
      identifiers = ["${local.read_only_list}"]

      type = "AWS"
    }

    effect = "Allow"

    actions = [
      "ecr:BatchGetImage",
      "ecr:DescribeRepositories",
      "ecr:ListImages",
    ]
  }
}

//data "aws_iam_user" "ecr_read_write" {
//  count     = "${length(local.read_write_list)}"
//  user_name = "${element(local.read_write_list,count.index )}"
//}
//
//data "aws_iam_user" "ecr_read_only" {
//  count     = "${length(local.read_only_list)}"
//  user_name = "${element(local.read_only_list,count.index )}"
//}
//
//data "aws_iam_role" "ecr_read_write" {
//  count     = "${length(local.read_write_list)}"
//  name = "${element(local.read_write_list,count.index )}"
//}
//
//data "aws_iam_role" "ecr_read_only" {
//  count     = "${length(local.read_only_list)}"
//  name = "${element(local.read_only_list,count.index )}"
//}

