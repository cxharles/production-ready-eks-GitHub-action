terraform {
  required_version = "~> 1.13.3"
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 5.49.0"
    }
  }
  backend "s3" {
    bucket       = "dev-charlesjatto-2025-tf"
    region       = "ca-central-1"
    key          = "dev/terraform.tfstate"
    use_lockfile = false #false
    #dynamodb_table = "Lock-Files"
    encrypt = true
  }
}

provider "aws" {
  region = var.aws-region
}
