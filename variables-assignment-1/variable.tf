variable "region" {
    type = string
    default = "us-east-1"
}

variable "instance_id" {
    type = string
    default = "t2.micro"
}

variable "ami_id" {
    type = string
    default = "ami-02e136e904f3da870"
}

variable "tags" {
    type = map
    default = {
        "ambiente" = "dev"
        "Name" = "teste"
    }
}