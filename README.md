# terraform-pagerduty-sns
Terraform module to create SNS topic and subscription for Pagerduty service.

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|:----:|:-----:|:-----:|
| display\_name |  Display name for the SNS topic | string | `""` | no |
| kms\_master\_key\_id | ID of KMS key | string | `""` | no |
| pagerduty\_endpoint | PagerDuty HTTPS endpoint for SNS notifications | string | n/a | yes |
| sns\_topic\_name | Name of SNS topic to create or reference | string | n/a | yes |
| tags | A map of tags to add to the sns_topic resource | map(string) | `{}` | no |

## Outputs

| Name | Description |
|------|-------------|
| sns\_topic\_arn | The ARN of the SNS topic |

## Examples

```hcl
module "sns-pagerduty" {
  source             = "https://github.com/SequoiaConsulting/terraform-pagerduty-sns.git?ref=1.0"
  display_name       = "PagerDutySNSDemo"
  pagerduty_endpoint = "https://events.pagerduty.com/integration/EXAMPLE_KEY/enqueue"
  sns_topic_name     = "pagerduty-sns-demo"
}
```
