resource "archive_file" "testing" {
  type        = "zip"
  source_file = "${path.module}/lambda_function.py"
  output_path = "${path.module}/python_zip_file.zip"
}