

data "local_file" "foo" {
  filename = "${path.module}/foo.bar"
}

data "local_file" "testfile" {
  filename = "${path.module}/test.txt"
}

output "name" {
  value = data.local_file.testfile
}