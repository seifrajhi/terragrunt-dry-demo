# Terragrunt multi environment Deploy demo
Terragrunt [DRY deploy demo across multiple environments](https://terragrunt.gruntwork.io/docs/getting-started/quick-start/#promote-immutable-versioned-terraform-modules-across-environments) 

This repository contains Terragrunt HCL that will create an AWS Instance in eu-west-1 and an S3 bucket deployed with Terragrunt  to manage Terraform variable keys and values for a development, production, and staging environments.

Rather than using hardcoded and scattered Terragrunt [inputs](https://terragrunt.gruntwork.io/docs/features/inputs/) to define environment parameter values.

Terragrunt folder structure
```
# terragrunt-dry-demo
├── development
│   ├── instance
│   │   └── terragrunt.hcl
│   ├── s3
│   │   └── terragrunt.hcl
│   └── terragrunt.hcl
│       
├── production
│   ├── instance
│   │   └── terragrunt.hcl
│   ├── s3
│   │   └── terragrunt.hcl
│   └── terragrunt.hcl
│       
└── staging
    ├── instance
    │   └── terragrunt.hcl
    ├── s3
    │   └── terragrunt.hcl
    └── terragrunt.hcl
        
```

The ``instance`` and ``s3`` sub-folders contain a ``terragrunt.hcl`` file that set the ``source`` parameter to point at the specific modules in the [``terragrunt-dry-tutorial-modules``](https://github.com/seifrajhi/terragrunt-dry-tutorial-modules) repo.  They also ``include`` the top level ``terragrunt.hcl`` file in the  ``development``, ``production``, and ``staging`` folders.  

The top level ``terragrunt.hcl`` file for each environment specifies the aws provider configuration. 

## Setup
1. Clone this repo ``terragrunt-dry-demo``
