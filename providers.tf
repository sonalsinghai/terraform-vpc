terraform {
  required_version = "~> 1.6.4"

  required_providers {
    aws = {
      source = "hashicorp/aws"
      # For latest version, comment out below line and add .terraform.lock.hcl file to VCS to maintain version uniformity
      version = "~> 5.26.0"
    }
  }
}

# Define configuration aliases for different AWS regions
provider "aws" {
  region = var.region
  # shared_config_files      = ["~/.aws/config"]
  shared_credentials_files = ["~/.aws/credentials"]
  profile                  = "val"

  default_tags {
    tags = {
      Terraform = "yes"
    }
  }
}
