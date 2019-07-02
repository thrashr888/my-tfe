provider "tfe" {
  hostname = var.hostname
  token    = var.TFE_TOKEN
}

resource "tfe_organization" "organization" {
  name                     = var.organization_name
  email                    = var.organization_email
  session_remember_minutes = 20160
  session_timeout_minutes  = 20160
}

resource "tfe_oauth_client" "oauth" {
  organization     = tfe_organization.organization.id
  api_url          = "https://api.github.com"
  http_url         = "https://github.com"
  oauth_token      = var.oauth_token
  service_provider = "github"
}
