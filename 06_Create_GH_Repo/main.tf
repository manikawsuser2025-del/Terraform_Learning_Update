
provider "github" {
  token = "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"
}


resource "github_repository" "example" {
  name        = "Sample_Repo_1"
  description = "Repo created by Terraform"
}

resource "github_repository_file" "foo" {
  repository          = github_repository.example.name
  file                = "terraform_statefile"
  content             = "this is just descriptiopn"
}

############################################################

#using local_file 
resource "local_file" "foo" {
  content  = "this is first tf rescoure"
  filename = "${path.module}/test.txt"
}

resource "github_repository_file" "foo2" {
  repository          = github_repository.example.name
  file                = local_file.foo.filename
  content             = local_file.foo.content
}

############################################################

#using data_source

data "local_file" "foo" {
  filename = "${path.module}/foo.bar"
}

resource "github_repository_file" "foo3" {
  repository          = github_repository.example.name
  file                = data.local_file.foo.filename
  content             = data.local_file.foo.content
}

############################################################

#using data_source with exitsing repo resource

data "github_repository" "first_repo_1" {
  name = "first-repo-1"
}

data "local_file" "local_file_1" {
  filename = "${path.module}/foo.bar"
}

resource "github_repository_file" "foo4" {
  repository          = data.github_repository.first_repo_1.name
  file                = data.local_file.local_file_1.filename
  content             = data.local_file.local_file_1.content
}