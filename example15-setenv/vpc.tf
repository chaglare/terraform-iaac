module "VPC" {
  source  = "chaglare/vpc/aws"
  version = "1.1.1"
  region              = "us-east-1"
  cidr_block          = "10.0.0.0/16"
  private_cidr_block1 = "10.0.1.0/24"
  private_cidr_block2 = "10.0.2.0/24"
  private_cidr_block3 = "10.0.3.0/24"
  public_cidr_block1  = "10.0.101.0/24"
  public_cidr_block2  = "10.0.102.0/24"
  public_cidr_block3  = "10.0.103.0/24"

  tags = {
    Name        = "VPC_Project"
    Environment = "Dev"
    Team        = "DevOps"
    Department  = "Operations"
    Bill        = "CFO"
    Quarter     = "1"
  }
}
# module "vpc" {
#   source                        = "farrukh90/vpc/aws"
#   region                        = "${var.region}"
#   vpc_cidr                      = "${var.vpc_cidr}"
#   public_cidr1                  = "${var.public_cidr1}"
#   public_cidr2                  = "${var.public_cidr2}"
#   public_cidr3                  = "${var.public_cidr3}"
#   private_cidr1                 = "${var.private_cidr1}"
#   private_cidr2                 = "${var.private_cidr2}"
#   private_cidr3                 = "${var.private_cidr3}"
#   tags                          = "${var.tags}"
# }

