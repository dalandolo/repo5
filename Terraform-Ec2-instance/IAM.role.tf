resource "aws_iam_role" "replication" {
  name = "replication-role"

  assume_role_policy = jsonencode({
    Version = "2012-10-17"
    Statement = [
      {
        Action = "sts:AssumeRole"
        Principal = {
          Service = "s3.amazonaws.com"
        }
        Effect = "Allow"
        Sid    = ""
      },
    ]
  })

  inline_policy {
    name   = "s3-replication-policy"
    policy = jsonencode({
      Version = "2012-10-17"
      Statement = [
        {
          Action   = "s3:ReplicateObject"
          Resource = "*"
          Effect   = "Allow"
        },
      ]
    })
  }
}