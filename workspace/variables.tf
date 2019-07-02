variable "organization" {
  type        = string
  description = "The name/id of your organization"
}

variable "name" {
  type        = string
  description = "The name of this workspace"
}

variable "auto_apply" {
  type        = bool
  default     = false
  description = "Automatically apply a successful plan"
}

variable "repo" {
  type        = string
  description = "The repo identifier, ex. `thrashr888/my-tfe`"
}

variable "branch" {
  type        = string
  default     = "master"
  description = "The branch for this repo"
}

variable "oauth_token_id" {
  type        = string
  description = "The id from the `tfe_oauth_client`"
}

variable "TFE_TOKEN" {
  type        = string
  description = "Your TFE user auth token"
}

variable "AWS_ACCESS_KEY_ID" {
  type        = string
  description = "For AWS auth, AWS_ACCESS_KEY_ID"
}

variable "AWS_SECRET_ACCESS_KEY" {
  type        = string
  description = "For AWS auth, AWS_SECRET_ACCESS_KEY"
}
