# configured aws provider with proper credentials
provider "aws" {
  region    = "us-east-1"
  profile   = "terraform-user"
}

# store the terraform state file in s3
terraform {
  backend "s3" {
    bucket    = "oro-terraform-file"
    key       = "terraform.statefile.demo"
    region    = "us-east-1"
    profile   = "terraform-user"
  }
}