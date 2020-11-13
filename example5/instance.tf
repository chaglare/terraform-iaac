resource "aws_instance" "web" {
	ami = "ami-02354e95b39ca8dec"
	instance_type = "t2.micro"
    associate_public_ip_address = "true"
    key_name = "${aws_key_pair.example5-key.key_name}"
    user_data = "${file("userdata_file.sh")}"
    vpc_security_group_ids = ["${aws_security_group.example5.id}"]
    availability_zone = "us-east-1a"
    tags = {
        Name = "web"
    }
}


resource "aws_instance" "web2" {
    ami = "ami-0947d2ba12ee1ff75"
	instance_type = "t2.micro"
    associate_public_ip_address = "true"
    key_name = "${aws_key_pair.example5-key.key_name}"
    user_data = "${file("userdata_file.sh")}"
    vpc_security_group_ids = ["${aws_security_group.example5.id}"]
    availability_zone = "us-east-1a"
    tags = {
        Name = "web2"
    }
}



resource "aws_ebs_volume" "example" {
availability_zone = "us-east-1a"
size = 20
tags = {
        Name = "web"
    }
}

resource "aws_volume_attachment" "ebs_att" {
device_name = "/dev/sdh"
volume_id = "${aws_ebs_volume.example.id}"
instance_id = "${aws_instance.web.id}"
}

resource "aws_ebs_volume" "example2" {
availability_zone = "us-east-1a"
size = 20
tags = {
        Name = "web2"
    }
}

resource "aws_volume_attachment" "ebs_att2" {
device_name = "/dev/sdh"
volume_id = "${aws_ebs_volume.example2.id}"
instance_id = "${aws_instance.web2.id}"
}