provider "aws" {
    region      = "us-east-2"
    profile     = "myaws"
}



resource "aws_instance" "example" {
    ami          = "ami-039e314f611dbc210"
    instance_type = "t2.micro"
    availability_zone  = "us-east-2a"

lifecycle {
    ignore_changes    = [ami]
}
}