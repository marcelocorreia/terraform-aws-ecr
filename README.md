### terraform-aws-ecr<--

#### TL;DR;
- [Inputs](#input)
- [Outputs](#output)

# Terraform Module ECR 

## Usage
```hcl
module "ecr" {
  source = "../"

  ecr_repositories = [
    "hey",
    "ho",
    "lets",
    "go",
  ]
}
```


## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|:----:|:-----:|:-----:|
| name |  | string | n/a | yes |
| read\_only\_roles |  | list | `<list>` | no |
| read\_only\_users |  | list | `<list>` | no |
| read\_write\_roles |  | list | `<list>` | no |
| read\_write\_users |  | list | `<list>` | no |

## Outputs

| Name | Description |
|------|-------------|
| policies |  |
| read\_only\_list |  |
| read\_write\_list |  |
| repository\_arn |  |
| repository\_id |  |
| repository\_url |  |

