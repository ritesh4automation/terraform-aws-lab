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
  # Fix: Use lowercase, hyphens, and a random number
  bucket = "terraform-lab-user-2025-x9z" 

  tags = {
    Name        = "My Lab Bucket"
    Environment = "Dev"
  }
}