locals {
  account_id      = data.aws_caller_identity.id.account_id
  assume_role_cmd = "source ${path.module}/assume_role.sh ${local.account_id} ${var.role}"
}