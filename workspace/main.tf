
resource "tfe_workspace" "workspace" {
  organization   = var.organization
  name           = var.name
  auto_apply     = var.auto_apply
  queue_all_runs = true

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

resource "tfe_variable" "AWS_ACCESS_KEY_ID" {
  key          = "AWS_ACCESS_KEY_ID"
  value        = var.AWS_ACCESS_KEY_ID
  category     = "env"
  workspace_id = tfe_workspace.workspace.id
  sensitive    = false
}

resource "tfe_variable" "AWS_SECRET_ACCESS_KEY" {
  key          = "AWS_SECRET_ACCESS_KEY"
  value        = var.AWS_SECRET_ACCESS_KEY
  category     = "env"
  workspace_id = tfe_workspace.workspace.id
  sensitive    = true
}
