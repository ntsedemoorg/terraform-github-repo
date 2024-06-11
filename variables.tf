variable "name" {
  description = "The name of the GitHub repository"
  type        = string
}

variable "allow_merge_commit" {
  description = "Set to true to allow merge commits"
  type        = bool
  default     = true
}

variable "allow_auto_merge" {
  description = "Set to true to allow auto merging"
  type        = bool
  default     = false
}

variable "allow_squash_merge" {
  description = "Set to true to allow squash merging"
  type        = bool
  default     = true
}

variable "allow_rebase_merge" {
  description = "Set to true to allow rebase merging"
  type        = bool
  default     = true
}

variable "archived" {
  description = "Set to true to archive the repository"
  type        = bool
  default     = false
}

variable "description" {
  description = "A description of the repository"
  type        = string
  default     = ""
}

variable "delete_branch_on_merge" {
  description = "Set to true to delete the branch on merge"
  type        = bool
  default     = false
}
