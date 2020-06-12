resource "aws_sns_topic" "pagerduty" {
  name              = var.sns_topic_name
  display_name      = var.display_name
  kms_master_key_id = var.kms_master_key_id
  tags              = var.tags
}

resource "aws_sns_topic_subscription" "pagerduty" {
  endpoint               = var.pagerduty_endpoint
  endpoint_auto_confirms = true
  protocol               = "https"
  topic_arn              = aws_sns_topic.pagerduty.arn
}
