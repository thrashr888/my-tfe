
module "my-tfe" {
  source = "./workspace"
  repo   = "thrashr888/my-tfe"
  name   = "my-tfe"

  TFE_TOKEN             = var.TFE_TOKEN
  AWS_ACCESS_KEY_ID     = var.AWS_ACCESS_KEY_ID
  AWS_SECRET_ACCESS_KEY = var.AWS_SECRET_ACCESS_KEY
  organization          = tfe_organization.organization.id
  oauth_token_id        = tfe_oauth_client.oauth.oauth_token_id
}

module "tf-random" {
  source     = "./workspace"
  repo       = "thrashr888/tf-random"
  name       = "tf-random"
  auto_apply = true

  TFE_TOKEN             = var.TFE_TOKEN
  AWS_ACCESS_KEY_ID     = var.AWS_ACCESS_KEY_ID
  AWS_SECRET_ACCESS_KEY = var.AWS_SECRET_ACCESS_KEY
  organization          = tfe_organization.organization.id
  oauth_token_id        = tfe_oauth_client.oauth.oauth_token_id
}

module "cool-website" {
  source = "./workspace"
  repo   = "thrashr888/cool-website"
  name   = "cool-website"

  TFE_TOKEN             = var.TFE_TOKEN
  AWS_ACCESS_KEY_ID     = var.AWS_ACCESS_KEY_ID
  AWS_SECRET_ACCESS_KEY = var.AWS_SECRET_ACCESS_KEY
  organization          = tfe_organization.organization.id
  oauth_token_id        = tfe_oauth_client.oauth.oauth_token_id
}

//module "empty" {
//  source = "./workspace"
//  repo = "thrashr888/empty"
//  branch = ""
//  name = "empty"
//
//  TFE_TOKEN = var.TFE_TOKEN
//  AWS_ACCESS_KEY_ID = var.AWS_ACCESS_KEY_ID
//  AWS_SECRET_ACCESS_KEY = var.AWS_SECRET_ACCESS_KEY
//  organization = tfe_organization.organization.id
//  oauth_token_id = tfe_oauth_client.oauth.oauth_token_id
//}

module "terraform-fast" {
  source     = "./workspace"
  repo       = "thrashr888/terraform-fast"
  name       = "terraform-fast"
  auto_apply = true

  TFE_TOKEN             = var.TFE_TOKEN
  AWS_ACCESS_KEY_ID     = var.AWS_ACCESS_KEY_ID
  AWS_SECRET_ACCESS_KEY = var.AWS_SECRET_ACCESS_KEY
  organization          = tfe_organization.organization.id
  oauth_token_id        = tfe_oauth_client.oauth.oauth_token_id
}

module "terraform-slow" {
  source     = "./workspace"
  repo       = "thrashr888/terraform-slow"
  name       = "terraform-slow"
  auto_apply = true

  TFE_TOKEN             = var.TFE_TOKEN
  AWS_ACCESS_KEY_ID     = var.AWS_ACCESS_KEY_ID
  AWS_SECRET_ACCESS_KEY = var.AWS_SECRET_ACCESS_KEY
  organization          = tfe_organization.organization.id
  oauth_token_id        = tfe_oauth_client.oauth.oauth_token_id
}

module "terraform-aws-example" {
  source = "./workspace"
  repo   = "thrashr888/terraform-aws-example"
  name   = "terraform-aws-example"

  TFE_TOKEN             = var.TFE_TOKEN
  AWS_ACCESS_KEY_ID     = var.AWS_ACCESS_KEY_ID
  AWS_SECRET_ACCESS_KEY = var.AWS_SECRET_ACCESS_KEY
  organization          = tfe_organization.organization.id
  oauth_token_id        = tfe_oauth_client.oauth.oauth_token_id
}

module "tfe-remote-backend-example" {
  source = "./workspace"
  repo   = "thrashr888/tfe-remote-backend-example"
  name   = "tfe-remote-backend-example"

  TFE_TOKEN             = var.TFE_TOKEN
  AWS_ACCESS_KEY_ID     = var.AWS_ACCESS_KEY_ID
  AWS_SECRET_ACCESS_KEY = var.AWS_SECRET_ACCESS_KEY
  organization          = tfe_organization.organization.id
  oauth_token_id        = tfe_oauth_client.oauth.oauth_token_id
}

module "thrasher-dev" {
  source = "./workspace"
  repo   = "thrashr888/thrasher.dev"
  name   = "thrasher-dev"

  TFE_TOKEN             = var.TFE_TOKEN
  AWS_ACCESS_KEY_ID     = var.AWS_ACCESS_KEY_ID
  AWS_SECRET_ACCESS_KEY = var.AWS_SECRET_ACCESS_KEY
  organization          = tfe_organization.organization.id
  oauth_token_id        = tfe_oauth_client.oauth.oauth_token_id
}

module "the-reg" {
  source = "./workspace"
  repo   = "thrashr888/the-reg"
  name   = "the-reg"

  TFE_TOKEN             = var.TFE_TOKEN
  AWS_ACCESS_KEY_ID     = var.AWS_ACCESS_KEY_ID
  AWS_SECRET_ACCESS_KEY = var.AWS_SECRET_ACCESS_KEY
  organization          = tfe_organization.organization.id
  oauth_token_id        = tfe_oauth_client.oauth.oauth_token_id
}

module "home-run" {
  source = "./workspace"
  repo   = "thrashr888/home-run"
  name   = "home-run"

  TFE_TOKEN             = var.TFE_TOKEN
  AWS_ACCESS_KEY_ID     = var.AWS_ACCESS_KEY_ID
  AWS_SECRET_ACCESS_KEY = var.AWS_SECRET_ACCESS_KEY
  organization          = tfe_organization.organization.id
  oauth_token_id        = tfe_oauth_client.oauth.oauth_token_id
}
