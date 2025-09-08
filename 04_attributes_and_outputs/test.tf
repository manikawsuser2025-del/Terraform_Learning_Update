provider "archive"{}

resource "archive_file" "example_zip_2" {
  type        = "zip"
  source_dir  = "../${path.module}/02_data_sources"
  output_path = "${path.module}/my_archive.zip"
}

output "name" {
  value = archive_file.example_zip_1.id
}


###########################################




