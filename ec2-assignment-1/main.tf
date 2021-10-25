#Assignment 1 - EC2 Instance
provider "aws" {
  region = "us-east-1"
}

resource "aws_instance" "windows" {
  ami           = "ami-0416f96ae3d1a3f29"
  instance_type = "t2.micro"
}