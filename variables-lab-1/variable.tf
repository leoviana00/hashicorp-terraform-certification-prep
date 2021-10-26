variable "instance_type" {
  type    = string
  default = "t2.micro"
}

variable "location" {
  type    = string
  default = "us-east-1"
}

variable "linux_img" {
    type = string
    default = "ami-02e136e904f3da870"
}