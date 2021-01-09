data "terraform_remote_state" "main" {
  backend = "s3"

  config = {
    bucket = "ADD YOUR S3 BUCKET HERE"
    key    = "path/to/my/remote_state"
    region = "us-east-1"
  }
}
