Local-exec Provisioner

local-exec: A provisioner that runs a local command after the resource is created. It’s useful for tasks that need to be run locally on the machine that Terraform is executing on.

Example:
resource "null_resource" "execute_local_command" {
  provisioner "local-exec" {
    command = "echo 'Deploying app on local system!'"
  }
}
