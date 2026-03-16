cat > main.tf << 'EOF'
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
# Region is automatically picked up from AWS credentials/environment variables
provider "aws" {}

# Create an S3 bucket
resource "aws_s3_bucket" "default" {
  bucket = "my-terraform-bucket-12345"
}

# Upload a file to the S3 bucket
resource "aws_s3_object" "object" {
  bucket = aws_s3_bucket.default.id
  key    = "myfile.txt"
  source = "myfile.txt"
}
EOF