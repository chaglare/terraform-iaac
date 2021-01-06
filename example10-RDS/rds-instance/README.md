# Module to create RDS instance
## Create a file and add the following
```
module "db" {
source = "./example10"
region = "us-east-1"
subnet_ids = [
  "subnet-e91e8ad7",
  "subnet-e3c4d4a9",
  "subnet-8080cddc"
]
security_group_name = "db"
allowed_hosts = [
"0.0.0.0/0"
]
db_name = "dbname"
engine = "mysql"
engine_version = "5.7"
instance_class = "db.t2.micro"
username = "foo"
password = "foobarbaz"
publicly_accessible = true
}
```

## Create another file output.tf
```
output "region" {
value = "${module.db.region}"
}
output "subnet_list" {
value = "${module.db.subnet_list}"
}
output "allows_hosts" {
value = "${module.db.allowed_hosts}"
}
output "DB_NAME" {
value = "${module.db.DB_NAME}"
}
```

# Run 
```
terraform init 
terraform apply
```