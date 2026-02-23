terraform {
  required_providers {
    aws = {
      source = "hashicorp/aws"
      version = "~> 5.0"
    }
  }
  backend "s3"{
    bucket= "daws84.cyou"
    key="remote-state"
    region= "us-east-1"
    dynamodb_table= "daws84.cyou"

  }
}

provider "aws" {
  # Configuration options
}