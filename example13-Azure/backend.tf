# terraform {
#   backend "azurerm" {
#     resource_group_name  = "storage_account"
#     storage_account_name = "dev1caglar"
#     container_name       = "tfstate"
#     key                  = "prod.terraform.tfstate"
#     access_key           = "ADD YOUR ACCESS KEY HERE AND DON'T PUSH YOUR backend.tf to your public repo"
#   }
# }

terraform {
  backend "s3" {
    bucket = "ADD YOUR S3 BUCKET HERE" # Uncommend backend.tf in .gitignore if you push your code to SM
    key    = "path/to/my/azure"
    region = "us-east-1"
  }
}
