module "iam-admin" {
  source  = "aws-hashicorp-adentity-academy-2025/iam-admin/aws"
  version = "0.1.1"
}

module "iam-s3" {
  source  = "aws-hashicorp-adentity-academy-2025/iam-s3/aws"
  version = "0.1.1"
}