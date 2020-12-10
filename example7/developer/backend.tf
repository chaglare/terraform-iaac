terraform {
  required_version = "0.11.14"

  backend "s3" {
    bucket = "terraform-chaglare"
    key    = "terraform.tfstate"
    region = "us-east-1"
  }
}
