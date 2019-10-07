
resource "tfe_workspace" "workspace" {
  organization      = var.organization
  name              = var.name
  working_directory = var.working_directory
  auto_apply        = var.auto_apply
  queue_all_runs    = true

  vcs_repo {
    identifier     = var.repo
    branch         = var.branch
    oauth_token_id = var.oauth_token_id
  }
}

resource "tfe_variable" "TFE_TOKEN" {
  key          = "TFE_TOKEN"
  value        = var.TFE_TOKEN
  category     = "terraform"
  workspace_id = tfe_workspace.workspace.id
  sensitive    = true
}

resource "tfe_variable" "ARM_CLIENT_ID" {
  key          = "ARM_CLIENT_ID"
  value        = var.ARM_CLIENT_ID
  category     = "env"
  workspace_id = tfe_workspace.workspace.id
  sensitive    = false
}

resource "tfe_variable" "ARM_CLIENT_SECRET" {
  key          = "ARM_CLIENT_SECRET"
  value        = var.ARM_CLIENT_SECRET
  category     = "env"
  workspace_id = tfe_workspace.workspace.id
  sensitive    = false
}

resource "tfe_variable" "ARM_SUBSCRIPTION_ID" {
  key          = "ARM_SUBSCRIPTION_ID"
  value        = var.ARM_SUBSCRIPTION_ID
  category     = "env"
  workspace_id = tfe_workspace.workspace.id
  sensitive    = false
}

resource "tfe_variable" "ARM_TENANT_ID" {
  key          = "ARM_TENANT_ID"
  value        = var.ARM_TENANT_ID
  category     = "env"
  workspace_id = tfe_workspace.workspace.id
  sensitive    = false
}