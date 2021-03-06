
variable "sns_topic_name" {
  description = "The name of SNS topic to create or reference"
  type        = string
}

variable "display_name" {
  description = "The display name for the SNS topic"
  type        = string
  default     = ""
}

variable "pagerduty_endpoint" {
  description = "The PagerDuty HTTPS endpoint where SNS notifications will be sent to"
  type        = string
}

variable "kms_master_key_id" {
  description = "The ID of an AWS-managed customer master key (CMK) for Amazon SNS or a custom CMK"
  default     = ""
}

variable "tags" {
  description = "A map of tags to add to the sns_topic resource"
  type        = map(string)
  default     = {}
}

variable "enabled" {
  type = bool
  default = false
  description = "Enable/Disable SNS and subscriptions"
}
