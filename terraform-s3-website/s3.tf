# Creating S3 bucket and configuring index & error document
resource "aws_s3_bucket" "homebase" {
  bucket = var.bucketName
  website {
    index_document = var.indexDoc
    error_document = var.errorDoc
  }
}

# Uploading the contents of the file
resource "aws_s3_object" "s3-object-index" {
  bucket       = aws_s3_bucket.homebase.id
  key          = var.indexDoc
  source       = var.indexDoc
  content_type = "text/html"
}

# Managing S3 bucket-level Public Access Block configuration.
resource "aws_s3_bucket_public_access_block" "s3-public-access" {
  bucket = aws_s3_bucket.homebase.id

  block_public_acls       = false
  block_public_policy     = false
  ignore_public_acls      = false
  restrict_public_buckets = false
}

# Adding bucket policy to grant public read access to the bucket
resource "aws_s3_bucket_policy" "policy" {
  bucket = aws_s3_bucket.homebase.id
  policy = templatefile("templates/s3-policy.json", { bucket = var.bucketName })
}