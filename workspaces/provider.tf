terraform {
  required_providers {
    aws = {
      source = "hashicorp/aws"
      version = "5.65.0"
    }
  }

  backend "s3" {
    bucket = "mittakola-remote-state"
    key    = "workspaces"
    region = "us-east-1"
    dynamodb_table = "daws78s-locking"
  }
}

provider "aws"  {
  region = "us-east-1"
}