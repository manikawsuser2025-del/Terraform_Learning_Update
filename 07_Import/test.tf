

#Syntax: terraform import github_repository.terraform terraform

provider "github" {
  token = "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"
}

resource "github_repository" "example" {
  name        = "first-repo-1"
  description = "Repo created by Terraform"
}


#terraform import github_repository.example first-repo-1