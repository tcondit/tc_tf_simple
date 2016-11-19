provider "aws" {
    region                  = "us-east-1"
    shared_credentials_file = "/Users/izz731/.aws-personal/credentials"
}

resource "aws_instance" "example" {
    count          = 2
    ami            = "ami-656be372"
    instance_type  = "t1.micro"
    tags {
        Name       = "aws_instance.example.${count.index}"
        /* CreateDate = "${create_date}" */
    }
}

