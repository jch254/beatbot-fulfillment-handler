{
  "Version": "2012-10-17",
  "Statement": [
    {
      "Effect": "Allow",
      "Resource": [
        "*"
      ],
      "Action": [
        "logs:*",
        "s3:*",
        "codebuild:*",
        "codepipeline:*",
        "cloudwatch:*",
        "lambda:*",
        "events:*",
        "iam:*",
        "ssm:DescribeParameters"
      ]
    },
    {
      "Effect": "Allow",
      "Action": [
        "kms:Decrypt"
      ],
      "Resource": ${kms_key_arns}
    },
    {
      "Effect": "Allow",
      "Action": [
        "ssm:GetParameters"
      ],
      "Resource": ${ssm_parameter_arns}
    }
  ]
}
