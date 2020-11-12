resource "aws_instance" "example" {
  ami = "ami-0947d2ba12ee1ff75"
  instance_type = "t2.micro"
  key_name      = "us-east-1-bastion-key"
  tags = {
    Name = "example"
  }

  # List
  security_groups = ["${ aws_security_group.test.name }"]
}