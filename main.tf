# Define the required provider and version
terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 5.0"
    }
  }
}

# Configure the AWS provider with region
provider "aws" {
  region = "us-east-1"
}

# Create an S3 bucket using Terraform
resource "aws_s3_bucket" "my_bucket" {
  bucket = "my-terraform-bucket-${random_id.bucket_id.hex}"

  tags = {
    Name        = "My Terraform Bucket"
    Environment = "Dev"
  }
}

# Generate a random ID for the bucket name to make it unique
resource "random_id" "bucket_id" {
  byte_length = 4
}
