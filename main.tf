resource "aws_s3_bucket" "log_archive" {
  bucket = "rithik-project-22-log-archive-2026"

  tags = {
    Name        = "Project-22-S3-Log-Archive"
    Environment = "Testing"
    ManagedBy   = "Terraform"
  }
}

resource "aws_s3_bucket_public_access_block" "log_archive" {
  bucket = aws_s3_bucket.log_archive.id

  block_public_acls       = true
  block_public_policy     = true
  ignore_public_acls      = true
  restrict_public_buckets = true
}

resource "aws_s3_bucket_lifecycle_configuration" "log_archive" {
  bucket = aws_s3_bucket.log_archive.id

  rule {
    id     = "expire-old-logs"
    status = "Enabled"

    filter {
      prefix = "logs/"
    }

    expiration {
      days = 90
    }
  }
}