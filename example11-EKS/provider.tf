provider "aws" {
  region  = var.region
  version = "3.56.0"
}

terraform {
  required_version = ">= 0.13.1"
}