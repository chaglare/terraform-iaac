# HCL (HashiCorp Configuration Language) 

provider "aws" {
  region = "us-east-1"
}

resource "aws_key_pair" "us-east-1-bastion-key" {
  key_name   = "packer_bastion"
  public_key = "ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAABAQCvSn/wB4uU1RnT8d7I47aclcbFStIiJeFevmdDtIKgQDgNhiRWC91ZZarnMKFmK4tp+MCDlapqd/x4ArvXG2jOXY8RZ+xZioWnqfzAltSmfCJVaMKilgGCjLHOpj+KiVGWOUbPsDSW4P6e2i/CNMyUThOkkpMASuB+21HPFur6tURCutoTL5d/YvzK+cABXZ6RbIluTzL+ozbdBGl/+bE3ojeXNIqXMmCY6g4jIFzIOgiQ+sXSbLKy5un5JaDVb9/+BGHdQElhpNORcSsv45iUJoCtk1TLjRtwwmVmQ2axTGx8ZixMkqD6k9vJfhKYoGuMZguT72kWWF82rRUMhbq9 caglar@ip-172-31-24-18.ec2.internal"
}
