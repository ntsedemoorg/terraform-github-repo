resource "github_repository" "repository" {
  name = var.name

  allow_merge_commit     = var.allow_merge_commit
  allow_auto_merge       = var.allow_auto_merge
  allow_squash_merge     = var.allow_squash_merge
  allow_rebase_merge     = var.allow_rebase_merge
  archived               = var.archived
  description            = "${var.description}: Managed by Terraform"
  delete_branch_on_merge = var.delete_branch_on_merge
  has_issues             = true
  has_projects           = false
  has_wiki               = false
  has_downloads          = false
  is_template            = false

  template {
    owner                = "ntse"
    repository           = "github-repo-template"
    include_all_branches = true
  }
}


resource "github_branch_protection" "this" {
  repository_id = github_repository.repository.node_id

  pattern = "main"

restrict_pushes {
    push_allowances = [
      data.github_user.this.node_id,
    ]
  }

}

data "github_user" "this" {
  username = "ntse"
}

