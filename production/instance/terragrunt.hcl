# terragrunt-dry-demo/production/instance/terragrunt.hcl
terraform {
  source = "git::https://github.com/seifrajhi/terragrunt-dry-tutorial-modules.git//instance?ref=v1.0.0"
}

include {
  path = find_in_parent_folders()
}
inputs = {
   ami = "ami-046a9f26a7f14326b"
   instance_type = "t2.micro"
   availability_zone_names = ["eu-west-1a", "eu-west-1b", "eu-west-1c"]
   resource_tags = {
    Name = "instance-demo"
    Owner       = "Saif Rajhi"
  }


}
