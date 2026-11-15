output "log_bucket" {
  value = aws_s3_bucket.logs.id
}

# output for the CLI
output "guardduty_detector_id" {
  value = aws_guardduty_detector.main.id
}

# userARN for the log reader user
output "log_reader_arn" {
  value = aws_iam_user.log_reader.arn
}

# Access Analyzer
output "access_analyzer_arn" {
  value = aws_accessanalyzer_analyzer.main.arn
}