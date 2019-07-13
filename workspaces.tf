
module "my-tfe" {
  source = "./workspace"
  repo   = "thrashr888/my-tfe"
  name   = "my-tfe"

  TFE_TOKEN             = var.TFE_TOKEN
  AWS_ACCESS_KEY_ID     = var.AWS_ACCESS_KEY_ID
  AWS_SECRET_ACCESS_KEY = var.AWS_SECRET_ACCESS_KEY
  GCP_CREDENTIALS       = var.GCP_CREDENTIALS
  organization          = tfe_organization.organization.id
  oauth_token_id        = tfe_oauth_client.oauth.oauth_token_id
}

module "tf-random" {
  source     = "./workspace"
  repo       = "thrashr888/tf-random"
  name       = "tf-random"
  auto_apply = true

  organization          = tfe_organization.organization.id
  oauth_token_id        = tfe_oauth_client.oauth.oauth_token_id
}

module "cool-website" {
  source = "./workspace"
  repo   = "thrashr888/cool-website"
  name   = "cool-website"

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

  organization          = tfe_organization.organization.id
  oauth_token_id        = tfe_oauth_client.oauth.oauth_token_id
}

module "terraform-slow" {
  source     = "./workspace"
  repo       = "thrashr888/terraform-slow"
  name       = "terraform-slow"
  auto_apply = true

  organization          = tfe_organization.organization.id
  oauth_token_id        = tfe_oauth_client.oauth.oauth_token_id
}

module "terraform-aws-example" {
  source = "./workspace"
  repo   = "thrashr888/terraform-aws-example"
  name   = "terraform-aws-example"

  AWS_ACCESS_KEY_ID     = var.AWS_ACCESS_KEY_ID
  AWS_SECRET_ACCESS_KEY = var.AWS_SECRET_ACCESS_KEY
  organization          = tfe_organization.organization.id
  oauth_token_id        = tfe_oauth_client.oauth.oauth_token_id
}

module "terraform-aws-example-single-instance" {
  source = "./workspace"
  repo   = "thrashr888/terraform-aws-example"
  name   = "terraform-aws-example-single-instance"
  working_directory = "single-instance"

  AWS_ACCESS_KEY_ID     = var.AWS_ACCESS_KEY_ID
  AWS_SECRET_ACCESS_KEY = var.AWS_SECRET_ACCESS_KEY
  organization          = tfe_organization.organization.id
  oauth_token_id        = tfe_oauth_client.oauth.oauth_token_id
}

module "terraform-gcp-example" {
  source = "./workspace"
  repo   = "thrashr888/terraform-gcp-example"
  name   = "terraform-gcp-example"

  GCP_CREDENTIALS       = var.GCP_CREDENTIALS
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

module "terraform-demo" {
  source = "./workspace"
  repo   = "thrashr888/terraform-demo"
  name   = "terraform-demo"

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

  AWS_ACCESS_KEY_ID     = var.AWS_ACCESS_KEY_ID
  AWS_SECRET_ACCESS_KEY = var.AWS_SECRET_ACCESS_KEY
  organization          = tfe_organization.organization.id
  oauth_token_id        = tfe_oauth_client.oauth.oauth_token_id
}

module "the-reg" {
  source = "./workspace"
  repo   = "thrashr888/the-reg"
  name   = "the-reg"

  AWS_ACCESS_KEY_ID     = var.AWS_ACCESS_KEY_ID
  AWS_SECRET_ACCESS_KEY = var.AWS_SECRET_ACCESS_KEY
  organization          = tfe_organization.organization.id
  oauth_token_id        = tfe_oauth_client.oauth.oauth_token_id
}

module "home-run" {
  source            = "./workspace"
  repo              = "thrashr888/home-run"
  name              = "home-run"
  working_directory = "terraform"

  AWS_ACCESS_KEY_ID     = var.AWS_ACCESS_KEY_ID
  AWS_SECRET_ACCESS_KEY = var.AWS_SECRET_ACCESS_KEY
  organization          = tfe_organization.organization.id
  oauth_token_id        = tfe_oauth_client.oauth.oauth_token_id
}
