terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 5.0"
    }
  }

  backend "s3" {
    bucket         = "your-terraform-state-bucket"  # Change this to your S3 bucket name
    key            = "terraform.tfstate"
    region         = "us-east-1"  # Adjust as needed
    dynamodb_table = "terraform-lock"
  }
}

provider "aws" {
  region = var.aws_region  # Use a variable for flexibility
}
