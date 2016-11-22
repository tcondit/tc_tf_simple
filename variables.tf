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
