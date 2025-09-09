// Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
// SPDX-License-Identifier: MIT-0

locals {
  validation_stages = {
    validate = "hashicorp/terraform:${var.terraform_version}"
  }
  conditional_validation_stages = merge(local.validation_stages, {
    tags = "aws/codebuild/amazonlinux2-x86_64-standard:5.0"
  })

  env_var = {
    TF_VERSION = var.terraform_version
  }
  conditional_env_var = merge(local.env_var, {
    TAGS           = var.tags
    TAGNAG_VERSION = var.tagnag_version
  })
}
