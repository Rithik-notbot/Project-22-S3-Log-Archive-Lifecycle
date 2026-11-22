output "bucket_name" {
  description = "Name of the S3 log archive bucket"
  value       = aws_s3_bucket.log_archive.bucket
}

output "lifecycle_rule_id" {
  description = "ID of the log expiration lifecycle rule"
  value       = aws_s3_bucket_lifecycle_configuration.log_archive.rule[0].id
}