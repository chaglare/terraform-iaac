# terraform {
#   backend "azurerm" {
#     resource_group_name  = "storage_account"
#     storage_account_name = "dev1caglar"
#     container_name       = "tfstate"
#     key                  = "prod.terraform.tfstate"
#     access_key           = "4nHEQKEoU380P1nCfgF2zAKtRDXqw+nhQsDFanQrYFIia6mktTDDsPWpT0QvoHv94GeiRqxKV/kP4FS6p7DYfA=="
#   }
# }

terraform {
  backend "s3" {
    bucket = "ADD YOUR S3 BUCKET HERE" # Uncommend backend.tf in .gitignore if you push your code to SM
    key    = "path/to/my/azure"
    region = "us-east-1"
  }
}