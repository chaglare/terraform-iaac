resource "aws_key_pair" "example6-key" {
  key_name   = "example6-key"
  public_key = "${file("~/.ssh/id_rsa.pub")}"
}
