cluster_name                                    = "eks"
cluster_version                                 = "1.21"
subnets                                         = ["subnet-e49f38a8", "subnet-01949269", "subnet-b22b54c8"]
vpc_id                                          = "vpc-0af5eb62"
instance_type                                   = "m4.large"
asg_max_size                                    = 5
asg_min_size                                    = 2
region                                          = "us-east-2"