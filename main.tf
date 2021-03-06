terraform {
    required_version = ">= 0.13, < 0.14"

    required_providers {
        aws = {
            source = "hashicorp/aws"
            version = "~> 3.9.0"
        }
    }

    backend "remote" {
        organization = "benoram"
        workspaces {
            name = "cognito-userpool-v1"
        }
    }
}

provider "aws" {
    alias  = "oregon"
    region = "us-west-2"
}

data "aws_caller_identity" "current" {
    provider = aws.oregon
}
