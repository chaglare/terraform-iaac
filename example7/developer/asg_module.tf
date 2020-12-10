module "webapp" {
  source           = "../"
  region           = "us-east-1"
  max_size         = "2"
  min_size         = "2"
  desired_capacity = "2"
  image_owner      = "137112412989"
  instance_type    = "c5.large"
  Env              = "Dev"
}
