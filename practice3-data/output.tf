output "DETAILS" {
    value = "${aws_key_pair.practice3-key.key_name}, ${aws_instance.web.id}"
}

output "ID" {
    value = "${aws_instance.web.id}"
}

output "AMI" {
    value = "${aws_instance.web.ami}"
}

output "AZ" {
    value = "${aws_instance.web.availability_zone}"
}

output "PIP" {
    value = "${aws_instance.web.public_ip}"
}

output "DNS" {
value = "${aws_route53_record.www.name}"
}

output "my_output" {
    value = "practice3"
}