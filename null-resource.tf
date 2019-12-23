


resource "null_resource" "cli_resource" {
  provisioner "local-exec" {
    when    = create
    command = "/bin/bash -c '${var.role == 0 ? "" : "${local.assume_role_cmd} && "}${var.cmd}'"
  }

  provisioner "local-exec" {
    when    = destroy
    command = "/bin/bash -c '${var.role == 0 ? "" : "${local.assume_role_cmd} && "}${var.destroy_cmd}'"
  }
}

variable "role" {
  description = "The role to assume in order to run the cli command."
  default     = 0
}

data "aws_caller_identity" "id" {}

locals {
  account_id      = data.aws_caller_identity.id.account_id
  assume_role_cmd = "source ${path.module}/assume_role.sh ${local.account_id} ${var.role}"
}