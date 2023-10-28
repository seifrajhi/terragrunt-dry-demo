# terragrunt-dry-demo/production/s3/terragrunt.hcl
terraform {
  source = "git::https://github.com/seifrajhi/terragrunt-dry-tutorial-modules.git//s3?ref=v1.0.0"
}

include {
  path = find_in_parent_folders()
}
inputs = {
   resource_tags = {
    Name = "bucket-demo"
    Owner       = "Saif Rajhi"
  }


}
