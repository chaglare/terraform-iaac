environment = "dev2"
s3_bucket = "terraform-chaglare" #Will be used to set backend.tf
s3_folder_project = "example" #Will be used to set backend.tf
s3_folder_region = "us-east-1" #Will be used to set backend.tf
s3_folder_type = "virginia" #Will be used to set backend.tf
s3_tfstate_file = "infrastructure.tfstate" #Will be used to set backend.tf


region = "us-east-1"
vpc_cidr = "10.0.0.0/16"
public_cidr1 = "10.0.1.0/24"
public_cidr2 = "10.0.2.0/24"
public_cidr3 = "10.0.3.0/24"
private_cidr1 = "10.0.101.0/24"
private_cidr2 = "10.0.102.0/24"
private_cidr3 = "10.0.103.0/24"
tags    =   {
    Name                    =   "VPC_Project"
    Environment             =   "Dev"
    Team                    =   "DevOps"
    Created_by              =   "Caglar"
    Department              =   "IT"
    Bill                    =   "CFO"
}
