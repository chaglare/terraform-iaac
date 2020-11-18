resource "aws_key_pair" "ex6-key" {
  key_name   = "ex6-key"
  public_key = "${file("~/.ssh/id_rsa.pub")}"
}
