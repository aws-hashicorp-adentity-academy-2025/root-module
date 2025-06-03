resource "random_string" "random" {
  length           = 6
  special          = false
}

module "iam-admin" {
  source  = "aws-hashicorp-adentity-academy-2025/iam-admin/aws"
  version = "0.1.3"

  postfix = random_string.random.result
}

module "iam-s3" {
  source  = "aws-hashicorp-adentity-academy-2025/iam-s3/aws"
  version = "0.1.3"

  postfix = random_string.random.result
}