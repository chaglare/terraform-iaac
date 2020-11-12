provider "aws" {
  region = "us-east-1"
}

resource "aws_key_pair" "us-east-1-bastion-key" {
  key_name   = "bastion"
  public_key = "ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAABAQDgmc6t0WF5agG/ZUgCUGvJd7ydwGOEKTkj1BYHjMjKBF9MYTzL+LFEFi+r+WEqt1muDmU5KqW7idAVOV9v8Gp9ya3/ZV1Ev2+8VjZKCogLxToQDP+ZpzBEgazqIWwob5D98CIwl8GE1Cv4VMosqp0aTZPrs5UPuZgdS7daoN5/6w/l7NsCz/D6iL3YUjLzYFb/JVXAUlo94P+byIAqwwvxSWl0GVv6j4Bmq8z0clM0YciftAIyIlfXIJtkOdafagfLehZGOm17arCcZZoGRvi5r6iEhR8nIG7v0mfQx75l+e9iysAS+lXChNmgOLGNlZg4ou+hZLpoYVJT2G8IFz7d ec2-user@bastion"
}

resource "aws_instance" "example" {
  key_name      = "bastion"
  ami           = "ami-0947d2ba12ee1ff75"
  instance_type = "t2.micro"
  tags = {
        Name = "example"
        Dept = "IT"
        Created_by = "Caglar"
  }
}