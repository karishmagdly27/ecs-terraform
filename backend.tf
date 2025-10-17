terraform {
  backend "s3" {
    bucket         = "my-terraform-state-bucket"   # literal value
    key            = "ecs-cluster/terraform.tfstate"
    region         = "us-west-2"
    dynamodb_table = "ecs-terraform-lock"
    encrypt        = true
  }

  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 5.18"
    }
  }
}

provider "aws" {
  region = "us-west-2"
}
