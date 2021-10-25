#Provider Block
provider "aws" {
  region = "us-east-1"
}

#Resource instance
resource "aws_instance" "web" {
  ami           = "ami-02e136e904f3da870"
  instance_type = "t2.micro"
}