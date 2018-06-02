# terraform-aws-mfa-required-policy
Terraform module which creates multi-factor authentication policy on AWS

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|:----:|:-----:|:-----:|
| policy_name | Policy Name | string | `AWSMFARequiredPolicy` | no |
| policy_description | Policy Description | string | - | no |
| deny_actions | List of actions that you require multi-factor authentication | list | `["*"]` | no |
| deny_resources | List of resources that you require multi-factor authentication | list | `["*"]` | no |

## Outputs

| Name | Description |
|------|-------------|
| arn | The ARN assigned by AWS to this policy. |


## Created Policy JSON

```json
{
    "Version": "2012-10-17",
    "Statement": [
        {
            "Sid": "",
            "Effect": "Deny",
            "Action": "*",
            "Resource": "*",
            "Condition": {
                "BoolIfExists": {
                    "aws:MultiFactorAuthPresent": "0"
                }
            }
        }
    ]
}
```