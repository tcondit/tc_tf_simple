/* variables.tf */

variable "access_key" {}
variable "secret_key" {}
variable "region" {
    default = "us-east-1"
}
variable "amis" {
    type = "map"
    default = {
        /* https://cloud-images.ubuntu.com/releases/14.04/release-20150408.1/ */
        us-east-1 = "ami-408c7f28"
        us-west-2 = "ami-595b7069"
    }
}
