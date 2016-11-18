provider "aws" {
    access_key = "AKIAJTCJJCNRMEPUG7QQ"
    secret_key = "ZqjB7ag48PeJaX6YnUWhzv2TMRWE13qsSH8WCEPV"
    region     = "us-east-1"
}

resource "aws_instance" "example" {
    count         = 2
    ami           = "ami-408c7f28"
    instance_type = "t1.micro"
    tags {
        Name      = "aws_instance.example.${count.index}"
    }
}

