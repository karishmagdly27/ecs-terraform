terraform {
  backend "s3" {
    bucket         = var.tfstate_s3_bucket
    key            = var.tfstate_s3_key
    region         = var.aws_region
    dynamodb_table = var.dynamodb_table
    encrypt        = true
  }

  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "6.14.1"
    }
  }
}

provider "aws" {
  region = var.aws_region
}
