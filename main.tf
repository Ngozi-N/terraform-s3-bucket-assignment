provider "aws" {
  region = "eu-west-2"  # Replace with your preferred AWS region, e.g., "us-west-2"
}

resource "aws_s3_bucket" "my_bucket" {
  bucket = "ng-bucket-jenkins-assignment"  # Modify with a globally unique name
}

resource "aws_s3_bucket_acl" "my_bucket_acl" {
  bucket = aws_s3_bucket.my_bucket.bucket
  acl    = "private"  # You can also use "public-read" or other supported ACLs
}