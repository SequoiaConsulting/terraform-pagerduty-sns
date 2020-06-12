output "sns_topic_arns" {
  description = "The ARNs of the SNS topic"
  value = aws_sns_topic.pagerduty.*.arn
}
