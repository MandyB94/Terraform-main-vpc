terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "5.16.1"
    }
  }

  backend "s3" {
    bucket = "mandar-bucket1"
    key    = "dev/terraform.tfstate"
    region = "ap-south-1"
  }
}

provider "aws" {
  region = "us-east-1"
}