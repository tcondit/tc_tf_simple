# variables.tf

variable "access_key" {}
variable "secret_key" {}

variable "region" {
    default = "us-east-1"
}

variable "amis" {
    type = "map"
    default = {
        # https://cloud-images.ubuntu.com/
        us-east-1 = "ami-ebb185fc"
        us-west-2 = "ami-e7a50987"
    }
}

variable "key_name" {
    description = "Name of the SSK key pair to use in AWS"
    #default = "~/Projects/terraform/keys/hashicorp_2016_11.pem"
    default = "hashicorp_2016_11"
}
