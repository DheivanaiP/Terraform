# Terraform Settings Block
terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      #version = "~> 3.21" # Optional but recommended in production
    }
  }
}

# Provider Block
provider "aws" {
  profile = "default" # AWS Credentials Profile configured on your local desktop terminal  $HOME/.aws/credentials
  region  = "ap-south-1"
}

terraform {
  backend "s3" {
    bucket = "terra-test-01"
    key = "terraform-provider-blocks/terraform.tfstate"
    region = "ap-south-1"
  }
}
