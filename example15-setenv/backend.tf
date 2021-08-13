terraform {
  backend "s3" {
    bucket = "terraform-chaglare"
    key    = "example/us-east-1/ohio/dev/infrastructure.tfstate"
    region = "us-east-1"
  }
}
