variable "hostname" {
  default="app.terraform.io"
}
variable "TFE_TOKEN" {}


# Configure the Terraform Enterprise Provider
provider "tfe" {
  hostname = "${var.hostname}"
  token    = "${var.TFE_TOKEN}"
}

resource "tfe_organization" "organization" {
 	name = "pthrasher-main"
  email = "pthrasher@hashicorp.com"
}


resource "tfe_workspace" "workspace" {
	name = "my-tfe"
	organization = "${tfe_organization.organization.id}"
  vcs_repo = {
    identifier = "thrashr888/my-tfe" # run thyself!
    oauth_token_id = "ot-Dokh8KgR6rbXV9es"
    branch = "master"
  }
}

resource "tfe_variable" "variable" {
	key = "TF_VAR_TFE_TOKEN"
	value = "${var.TFE_TOKEN}"
	category = "env"
  workspace_id = "${tfe_workspace.workspace.id}"
  sensitive = true
}
