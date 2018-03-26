provider "aws" {
  region = "Your_Region"
}

resource "aws_s3_bucket" "Example" {
  bucket = "Unique_Bucket_Name"
  acl = "private"
  tags {
    Name = "SampleTag"
  }
}

