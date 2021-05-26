resource "aws_key_pair" "example5-key" {
	key_name = "example5-key"
	public_key = "${file("~/.ssh/id_rsa.pub")}"
}