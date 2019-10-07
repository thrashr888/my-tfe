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

resource "tfe_policy_set" "versioned" {
  name         = "sentinel-playground"
  description  = "A collection of policies"
  organization = tfe_organization.organization.id
  global       = true

  vcs_repo {
    identifier         = "thrashr888/sentinel-playground"
    ingress_submodules = false
    oauth_token_id     = tfe_oauth_client.oauth.oauth_token_id
  }
}

resource "tfe_sentinel_policy" "always-passes" {
  name         = "always-passes"
  description  = "This policy always passes"
  organization = tfe_organization.organization.id
  policy       = "main = rule { true }"
  enforce_mode = "hard-mandatory"
}

resource "tfe_sentinel_policy" "always-fails" {
  name         = "always-fails"
  description  = "This policy always fails"
  organization = tfe_organization.organization.id
  policy       = "main = rule { false }"
  enforce_mode = "advisory"
}

resource "tfe_policy_set" "legacy" {
  name         = "legacy-policy-set"
  description  = "A legacy policy set"
  organization = tfe_organization.organization.id
  global       = true
  policy_ids   = [tfe_sentinel_policy.always-passes.id]
}

resource "tfe_policy_set" "empty" {
  name         = "empty-policy-set"
  description  = "An empty policy set"
  organization = tfe_organization.organization.id
  global       = true
}
