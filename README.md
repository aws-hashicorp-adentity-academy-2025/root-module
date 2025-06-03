# HCP Terraform Root Module 예제

## 개요

이 디렉토리는 HCP Terraform 데모를 위한 root module 예제입니다.  
IAM Admin 권한과 S3 읽기 전용(ReadOnly) 권한을 각각 별도의 모듈로 분리하여, 실제 인프라 환경에서 모듈을 어떻게 사용하는지 보여줍니다.

## 사용 방법

1. 이 디렉토리에서 Terraform 명령어를 실행하세요.
2. 필요한 경우 provider 설정이나 모듈 버전을 수정할 수 있습니다.

```hcl
module "iam-admin" {
  source  = "aws-hashicorp-adentity-academy-2025/iam-admin/aws"
  version = "0.1.1"
}

module "iam-s3" {
  source  = "aws-hashicorp-adentity-academy-2025/iam-s3/aws"
  version = "0.1.1"
}
```

## 주요 기능

- IAM Admin 권한 모듈 사용 예시
- S3 ReadOnly 권한 모듈 사용 예시

## 사전 조건

- AWS 계정 및 접근 권한
- Terraform 설치 및 환경 구성

## 적용 방법

1. Terraform 초기화  
   ```
   terraform init
   ```
2. Terraform 계획 확인  
   ```
   terraform plan
   ```
3. Terraform 적용  
   ```
   terraform apply
   ```

## 참고 사항

- 이 예제는 데모 및 테스트 용도로만 사용하시기 바랍니다.
- 실제 운영 환경에서는 최소 권한 원칙(Least Privilege Principle)을 준수하여 권한을 설정하세요.
