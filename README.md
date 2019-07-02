# My TFE

Builds my TFE environment. Depends on the [TFE Provider](https://github.com/terraform-providers/terraform-provider-tfe/tree/f-initial-resources).

## Setup Vars
```
cp terraform.tfvars.example terraform.tfvars
```

### Oauth Token
Go to github and create a [personal access token](https://github.com/settings/tokens/new)
with the `repo` and `admin:repo_hook` scopes. Use this generated value for your
`oauth_token` value in `terraform.tfvars`.
