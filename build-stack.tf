provider "aws" {
    region                  = "us-east-1"
    shared_credentials_file = "/Users/izz731/.aws-personal/credentials"
}

resource "aws_instance" "example" {
    count         = 2
    ami           = "ami-408c7f28"
    instance_type = "t1.micro"
    tags {
        Name      = "aws_instance.example.${count.index}"
    }
}

resource "aws_s3_bucket" "b" {
    bucket = "terraform-tfstate-6fed40d"
    acl    = "private"
    versioning {
        enabled = true
    }
}
