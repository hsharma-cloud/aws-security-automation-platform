resource "aws_cloudtrail" "security_trail" {
  name                          = "security-trail"
  s3_bucket_name                = "aws-sec-log-archive-dev"
  include_global_service_events = true
  is_multi_region_trail         = true
  enable_logging                = true

  event_selector {
    read_write_type           = "All"
    include_management_events = true
  }

  depends_on = [aws_s3_bucket_policy.cloudtrail_policy]
}
