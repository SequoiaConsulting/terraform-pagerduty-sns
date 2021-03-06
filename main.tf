locals {
  sns_topic_arn = element(concat(aws_sns_topic.pagerduty.*.arn, list("")), 0)
}

resource "aws_sns_topic" "pagerduty" {
  count = var.enabled == true ? 1 : 0
  name              = var.sns_topic_name
  display_name      = var.display_name
  kms_master_key_id = var.kms_master_key_id
  tags              = var.tags
}

resource "aws_sns_topic_subscription" "pagerduty" {
  count = var.enabled == true ? 1 : 0
  endpoint               = var.pagerduty_endpoint
  endpoint_auto_confirms = true
  protocol               = "https"
  topic_arn              = local.sns_topic_arn
}
