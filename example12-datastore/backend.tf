terraform {
  backend "s3" {
    bucket = "ADD YOUR S3 BUCKET HERE"
    key    = "path/to/my/remote_state"
    region = "us-east-1"
  }
}
