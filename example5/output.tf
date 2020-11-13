output "DETAILS" {
    value = "${aws_key_pair.example5-key.key_name}, ${aws_instance.web.id}, ${aws_instance.web2.id}"
}

output "ID" {
    value = "${aws_instance.web.id}"
}

output "ID2" {
    value = "${aws_instance.web2.id}"
}

output "AMI" {
    value = "${aws_instance.web.ami}"
}

output "ARN" {
    value = "${aws_instance.web.arn}"
}

output "AZ" {
    value = "${aws_instance.web.availability_zone}"
}

output "PIP" {
    value = "${aws_instance.web.public_ip}"
}

output "PIP2" {
    value = "${aws_instance.web2.public_ip}"
}

# output "DNS" {
# value = "${aws_route53_record.www.name}"
# }

output "my_output" {
    value = "my message"
}