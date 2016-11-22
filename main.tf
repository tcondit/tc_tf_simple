# main.tf

provider "aws" {
    region     = "${var.region}"
    access_key = "${var.access_key}"
    secret_key = "${var.secret_key}"
}

resource "aws_instance" "example" {
    count          = 1
    ami            = "${lookup(var.amis, var.region)}"
    instance_type  = "t2.micro"

    provisioner "local-exec" {
        command = "echo ${aws_instance.example.public_ip} > ip_address.txt"
    }
    tags {
        Name = "aws_instance.example.${count.index}"
        # CreateDate = "${create_date}"
    }
}

resource "aws_eip" "ip" {
    instance = "${aws_instance.example.id}"
}

output "ip" {
    value = "${aws_eip.ip.public_ip}"
}
