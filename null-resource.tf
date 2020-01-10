resource "null_resource" "null_resource" {
    triggers = {
        triggers_id = var.triggers_id
    }

    provisioner "local-exec" {
        command = "/bin/bash -c '${var.role == "" ? "" : "${local.assume_role_cmd} && "}${var.cmd}'"
    }
}