resource "aws_sns_topic" "pagerduty" {
  name              = var.sns_topic_name
  display_name      = var.display_name
  kms_master_key_id = length(var.kms_master_key_id) > 0 ? kms_master_key_id : null
  tags              = var.tags
}

resource "aws_sns_topic_subscription" "pagerduty" {
  endpoint               = var.pagerduty_endpoint
  endpoint_auto_confirms = true
  protocol               = "https"
  topic_arn              = sns_topic_arn.pagerduty.arn
}
