terraform {
  required_version = ">0.15.3"
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~>5.39"
    }
    random = {
      source  = "hashicorp/random"
      version = "~>3.0"
    }
    local = {
      source  = "hashicorp/local"
      version = ">=2.4"
    }
    null = {
      source  = "hashicorp/null"
      version = ">=3.2"
    }
  }
}

provider "aws" {
  region = var.region
  default_tags {
    tags = {
      Environment = var.environment
      Ewner       = var.email
      Team        = var.team
      Vendor      = var.vendor
    }
  }
}


provider "local" {}
provider "null" {}
provider "random" {}
