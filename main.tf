data "aws_iam_policy_document" "aws_mfa_required_policy_document" {
  statement {
    effect    = "Deny"
    actions   = "${var.deny_actions}"
    resources = "${var.deny_resources}"

    condition = {
      test     = "BoolIfExists"
      variable = "aws:MultiFactorAuthPresent"
      values   = false
    }
  }
}

resource "aws_iam_policy" "aws_mfa_required_policy" {
  name        = "${var.policy_name}"
  description = "${var.policy_description}"
  policy      = "${data.aws_iam_policy_document.aws_mfa_required_policy_document.json}"
}
