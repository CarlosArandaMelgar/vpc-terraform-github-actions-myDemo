terraform {
  required_providers {
    aws = {
      source = "hashicorp/aws"
      version = "5.31.0"
    }
  }
   backend "s3" {
    bucket = "terraform-remote-backend-s3v1"
    key    = "dev/terraform.tfstate"
    region = "us-east-1"
  }
}
