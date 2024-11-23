provider "aws" {
  region  = var.region
  alias = "origin"
}

provider "aws" {
  region  = var.aws_destination_region
  alias = "destination"
}

terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"   
      version = "~> 5.0"          
    }
  }
  required_version = ">= 1.0.0"   
}

