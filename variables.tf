variable "policy_name" {
  default = "AWSMFARequiredPolicy"
}

variable "policy_description" {
  default = ""
}

variable "deny_actions" {
  description = "List of actions that you require multi-factor authentication"
  type        = "list"
  default     = ["*"]
}

variable "deny_resources" {
  description = "List of resources that you require multi-factor authentication"
  type        = "list"
  default     = ["*"]
}
