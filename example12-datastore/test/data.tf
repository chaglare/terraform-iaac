data "terraform_remote_state" "main" {
  backend = "s3"

  config = {
    bucket = "ADD YOUR S3 BUCKET HERE" # Uncommend backend.tf in .gitignore if you push your code to SM
    key    = "path/to/my/remote_state"
    region = "us-east-1"
  }
}
