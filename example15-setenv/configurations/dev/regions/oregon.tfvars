environment = "dev"
s3_bucket = "terraform-chaglare" #Will be used to set backend.tf
s3_folder_project = "example" #Will be used to set backend.tf
s3_folder_region = "us-east-1" #Will be used to set backend.tf
s3_folder_type = "oregon" #Will be used to set backend.tf
s3_tfstate_file = "infrastructure.tfstate" #Will be used to set backend.tf


region = "us-west-2"
vpc_cidr = "192.168.0.0/16"
public_cidr1 = "192.168.1.0/24"
public_cidr2 = "192.168.2.0/24"
public_cidr3 = "192.168.3.0/24"
private_cidr1 = "192.168.101.0/24"
private_cidr2 = "192.168.102.0/24"
private_cidr3 = "192.168.103.0/24"
tags    =   {
    Name                    =   "VPC_Project"
    Environment             =   "Dev"
    Team                    =   "DevOps"
    Created_by              =   "Caglar"
    Department              =   "IT"
    Bill                    =   "CFO"
}