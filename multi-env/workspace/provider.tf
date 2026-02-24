terraform {
  required_providers {
    aws = {
      source = "hashicorp/aws"
      version = "~> 5.0"
    }
  }
  backend "s3"{
    bucket= "daws84.cyou"
    key="remote-state-workspace"
    region= "us-east-1"
    
    encrypt= true
    use_lockfile= true

  }
}

provider "aws" {
  # Configuration options
}