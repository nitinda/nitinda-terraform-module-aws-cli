resource "null_resource" "cli_resource" {
  provisioner "local-exec" {
    when    = create
    command = "/bin/bash -c '${var.role == "" ? "" : "${local.assume_role_cmd} && "}${var.cmd}'"
  }

  provisioner "local-exec" {
    when    = destroy
    command = "/bin/bash -c '${var.role == "" ? "" : "${local.assume_role_cmd} && "}${var.destroy_cmd}'"
  }
}