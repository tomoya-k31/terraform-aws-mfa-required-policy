variable "policy_name" {
  default = "AWSMFARequiredPolicy"
}

variable "policy_description" {
  default = ""
}

variable "deny_actions" {
  description = "A few actions that you require multi-factor authentication"
  type        = "list"
  default     = ["*"]
}

variable "deny_resources" {
  description = "A few resources that you require multi-factor authentication"
  type        = "list"
  default     = ["*"]
}
