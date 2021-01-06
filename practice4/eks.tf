module "eks" {
  source  = "chaglare/eks/aws"
  version = "1.0.0"
  # insert the 8 required variables here
  cluster_name                                    = "my-cluster"
  cluster_version                                 = "1.15"
  subnets                                         = ["subnet-e49f38a8", "subnet-01949269", "subnet-b22b54c8"]
  vpc_id                                          = "vpc-0af5eb62"
  instance_type                                   = "m4.large"
  asg_max_size                                    = 5
  asg_min_size                                    = 1
  region                                          = "us-east-2"
}