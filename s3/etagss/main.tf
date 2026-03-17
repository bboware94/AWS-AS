# Define the required provider and version
terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 5.0"
    }
  }
}

# Configure the AWS provider
provider "aws" {
  region = "ap-southeast-2"
}

# Create an S3 bucket
resource "aws_s3_bucket" "default" {
  bucket = "my-terraform-bucket-bboware"
}

# Upload a file to the S3 bucket
resource "aws_s3_object" "object" {
  bucket = aws_s3_bucket.default.id 
  key    = "myfile.txt"
  source = "myfile.txt"
  
  etag = filemd5("myfile.txt") # Calculate the MD5 hash of the file and use it as the ETag
}
