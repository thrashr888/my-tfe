variable "hostname" {
  type        = string
  default     = "app.terraform.io"
  description = "The server that TFE is running on"
}

variable "TFE_TOKEN" {
  type        = string
  description = "Your TFE Team auth token"
}

variable "organization_name" {
  default     = "hashicorp_test"
  description = "The name for the TFE organization"
}

variable "organization_email" {
  default     = "test@hashicorp.com"
  description = "The email address for the TFE organization"
}

variable "oauth_token" {
  type        = string
  description = "A personal access token from GitHub (https://github.com/settings/tokens/new)"
}

variable "AWS_ACCESS_KEY_ID" {
  type        = string
  description = "For AWS auth, AWS_ACCESS_KEY_ID"
}

variable "AWS_SECRET_ACCESS_KEY" {
  type        = string
  description = "For AWS auth, AWS_SECRET_ACCESS_KEY"
}
