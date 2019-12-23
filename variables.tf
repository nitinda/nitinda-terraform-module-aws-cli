variable "cmd" {
  description = "The command used to create the resource."
}

variable "destroy_cmd" {
  description = "The command used to destroy the resource."
}

variable "role" {
  description = "The role to assume in order to run the cli command."
  default     = ""
}

variable "triggers_ids" {
  description = "IDs or ARNs of any resources that are a dependency of the resource created by this module."
  type        = any
  default     = [{}]
}