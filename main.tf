
# Terraform configuration
terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 6.0"
    }
  }
}

# AWS Provider
provider "aws" {
  region = "us-east-1"
}

# Get AWS account information
data "aws_caller_identity" "current" {}

# Display AWS account ID
output "aws_account_id" {
  value = data.aws_caller_identity.current.account_id
}

# Display AWS user ARN
output "aws_user_arn" {
  value = data.aws_caller_identity.current.arn
}

