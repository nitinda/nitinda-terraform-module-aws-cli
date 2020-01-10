resource "null_resource" "aws_cli_resource" {
    triggers = {
        triggers_id = var.triggers_id
    }

    provisioner "local-exec" {
        command = "/bin/bash -c '${var.role == "" ? "" : "${local.assume_role_cmd} && "}${var.cmd}'"
    }
}