# terragrunt-dry-demo/development/terragrunt.hcl
generate "provider" {
  path = "provider.tf"
  if_exists = "overwrite_terragrunt"
  contents = <<EOF
provider "aws" {
  profile = "default"
  region  = "eu-west-1"
}
EOF
}
