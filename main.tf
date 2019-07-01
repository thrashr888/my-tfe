variable "hostname" {
  default     = "app.terraform.io"
  description = "The server that TFE is running on"
}
variable "TFE_TOKEN" {}


variable "organization_name" {
  default     = "pthrasher-main"
  description = "The name of the TFE Organization"
}
variable "organization_email" {
  default     = "pthrasher@hashicorp.com"
  description = "The email address of the TFE Organization"
}

variable "workspace_name" {
  default     = "my-tfe"
  description = "The name of the TFE Workspace"
}
variable "repo_identifier" {
  default     = "thrashr888/my-tfe"
  description = "The name of the repo to connect the TFE Workspace to, ex. \"thrashr888/my-tfe\""
}
variable "oauth_token_id" {
  default     = "ot-Dokh8KgR6rbXV9es"
  description = "The `token_id` of the OAuth connection to the TFE Workspace. It is provided once you configure an OAuth connection in the TFE Organization."
}


# Configure the Terraform Enterprise Provider
provider "tfe" {
  hostname = var.hostname
  token    = var.TFE_TOKEN
}

resource "tfe_organization" "organization" {
  name  = var.organization_name
  email = var.organization_email
}


resource "tfe_workspace" "workspace" {
  name         = var.workspace_name
  organization = tfe_organization.organization.id
  vcs_repo = {
    identifier     = var.repo_identifier
    oauth_token_id = var.oauth_token_id
    branch         = "master"
  }
}

resource "tfe_variable" "variable" {
  key          = "TF_VAR_TFE_TOKEN"
  value        = var.TFE_TOKEN
  category     = "env"
  workspace_id = tfe_workspace.workspace.id
  sensitive    = true
}
