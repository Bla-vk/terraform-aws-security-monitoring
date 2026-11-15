resource "aws_iam_user" "log_reader" {
  name = "${var.project}-log-reader"
}

resource "aws_iam_user_policy" "log_reader" {
  name = "log-reader"
  user = aws_iam_user.log_reader.name

  policy = jsonencode({
    Version = "2012-10-17"
    Statement = [
      {
        Effect   = "Allow"
        Action   = ["s3:ListBucket"]
        Resource = aws_s3_bucket.logs.arn
      },
      {
        Effect   = "Allow"
        Action   = ["s3:GetObject"]
        Resource = "${aws_s3_bucket.logs.arn}/*"
      }
    ]
  })
}

# Access Analyzer
resource "aws_accessanalyzer_analyzer" "main" {
  analyzer_name = "${var.project}-analyzer"
  type          = "ACCOUNT"
}