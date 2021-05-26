resource "aws_key_pair" "practice3-key" {
	key_name = "practice3-key"
	public_key = "${file("~/.ssh/id_rsa.pub")}"
}