variable "cmd" {
  description = "The command used to create the resource."
}

variable "role" {
  description = "The role to assume in order to run the cli command."
  default     = ""
}

variable "triggers_id" {
  description = "IDs or ARNs of any resources that are a dependency of the resource created by this module."
  default     = ""
}

variable "account_id" {
  description = "AWS Account ID"
  default = ""
}
