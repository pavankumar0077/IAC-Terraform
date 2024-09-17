provider "aws" {
  region = "ap-south-1"
}

resource "aws_s3_bucket" "mys3env" {
  for_each = {
    "dev"  = "dev-123-pavan"
    "qa"   = "qa-123-pavan"
    "prod" = "prod-123-pavan"
  }

  bucket = "${each.key}-${each.value}"

  tags = {
    value          = each.value
    env            = each.key
    s3-bucket-name = "${each.key}-${each.value}"
  }
}

resource "aws_s3_bucket_ownership_controls" "mys3env" {
  for_each = aws_s3_bucket.mys3env

  bucket = each.value.id

  rule {
    object_ownership = "BucketOwnerPreferred"
  }
}

resource "aws_s3_bucket_public_access_block" "mys3env" {
  for_each = aws_s3_bucket.mys3env

  bucket = each.value.id

  block_public_acls       = true
  block_public_policy     = true
  ignore_public_acls      = true
  restrict_public_buckets = true
}