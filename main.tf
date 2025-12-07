# main.tf

terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 5.0"
    }
  }
}

provider "aws" {
  region = "us-east-1"
}

resource "aws_s3_bucket" "my_lab_bucket" {
  bucket = "unique-bucket-name-12345"  # CHANGE THIS NAME

  tags = {
    Name        = "My Lab Bucket"
    Environment = "Dev"
  }
}