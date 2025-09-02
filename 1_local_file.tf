resource "local_file" "foo" {
  content  = "this is first tf rescoure"
  filename = "${path.module}/test.txt"
}
