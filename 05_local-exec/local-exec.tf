resource "local_file" "example" {
  content  = "This is a test file created by Terraform"
  filename = "${path.module}/balaramtest.txt"

  # provisioner "local-exec" {
  #   command = "mv ${path.module}/testfile1.txt ${path.module}/testfile2.txt"
  # }

  # provisioner "local-exec" {
  #   command = "cp ${path.module}/testfile2.txt ${path.module}/testfile3.txt"
  # }

  # provisioner "local-exec" {
  #   command = "ls -l ${path.module}"
  # }

  provisioner "local-exec" {
    command = "sh -x linux_cmds.sh"
  }  

}