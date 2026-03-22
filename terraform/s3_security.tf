resource "aws_s3_bucket_server_side_encryption_configuration" "log_bucket_encryption" {
  bucket = "aws-sec-log-archive-dev"

  rule {
    apply_server_side_encryption_by_default {
      sse_algorithm = "AES256"
    }
  }
}

resource "aws_ebs_encryption_by_default" "default" {
  enabled = true
}
