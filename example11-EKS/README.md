# This module creates EKS cluster

### Terraform code takes values. Provide those codes inside your tfvars file
```
cluster_name                                    = "eks"
cluster_version                                 = "1.15"
subnets                                         = ["subnet-00000", "subnet-00000", "subnet-00000"]
vpc_id                                          = "vpc-0000000000"
instance_type                                   = "m4.large"
asg_max_size                                    = 5
asg_min_size                                    = 1
region                                          = "us-east-2"
```

### Copy and paste below codes if you want to see the outputs

```
output "cluster_id" {
	value = "${module.eks.cluster_id}"
}
output "cluster_arn" {
	value = "${module.eks.cluster_arn}"
}
output "cluster_version" {
	value = "${module.eks.cluster_version}"
}
output "cluster_security_group_id" {
	value = "${module.eks.cluster_security_group_id}"
}
output "workers_asg_names" {
	value = "${module.eks.workers_asg_names}"
}
```

### Run below command
``` 
terraform_0.12.19 init
terraform_0.12.19 plan -var-file regions/ohio.tfvars
terraform_0.12.19 apply -var-file regions/ohio.tfvars
```